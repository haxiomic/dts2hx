#!/usr/bin/env node
/**
 * Runtime test harness for dts2hx examples.
 * Uses puppeteer-core with system Chrome for browser examples,
 * and direct node execution for server examples.
 */
import puppeteer from 'puppeteer-core';
import http from 'http';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import { execSync } from 'child_process';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const CHROME_PATH = '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome';

const results = {};

function log(example, status, detail = '') {
  const icon = status === 'PASS' ? '\x1b[32mPASS\x1b[0m' : status === 'FAIL' ? '\x1b[31mFAIL\x1b[0m' : '\x1b[33mSKIP\x1b[0m';
  console.log(`  [${icon}] ${example}${detail ? ': ' + detail : ''}`);
  results[example] = { status, detail };
}

// Simple static file server for browser examples
function createStaticServer(dir) {
  return new Promise((resolve) => {
    const mimeTypes = {
      '.html': 'text/html', '.js': 'application/javascript',
      '.css': 'text/css', '.json': 'application/json',
    };
    const server = http.createServer((req, res) => {
      let filePath = path.join(dir, req.url === '/' ? 'index.html' : req.url);
      // Resolve node_modules for library scripts
      if (!fs.existsSync(filePath) && req.url.includes('node_modules')) {
        filePath = path.join(dir, req.url);
      }
      const ext = path.extname(filePath);
      fs.readFile(filePath, (err, data) => {
        if (err) {
          res.writeHead(404);
          res.end('Not found');
          return;
        }
        res.writeHead(200, { 'Content-Type': mimeTypes[ext] || 'application/octet-stream' });
        res.end(data);
      });
    });
    server.listen(0, () => resolve(server));
  });
}

async function testBrowserExample(name, checks) {
  const dir = path.join(__dirname, name);
  if (!fs.existsSync(path.join(dir, 'dist'))) {
    log(name, 'SKIP', 'dist/ not found (not built)');
    return;
  }

  const server = await createStaticServer(dir);
  const port = server.address().port;
  let browser;
  try {
    browser = await puppeteer.launch({
      executablePath: CHROME_PATH,
      headless: true,
      args: ['--no-sandbox', '--use-gl=angle', '--enable-webgl', '--ignore-gpu-blocklist'],
    });
    const page = await browser.newPage();

    // Collect console messages and errors
    const consoleLogs = [];
    const errors = [];
    page.on('console', msg => consoleLogs.push({ type: msg.type(), text: msg.text() }));
    page.on('pageerror', err => errors.push(err.message));

    await page.goto(`http://localhost:${port}/`, { waitUntil: 'networkidle0', timeout: 15000 });

    // Wait a moment for any async initialization
    await new Promise(r => setTimeout(r, 1000));

    // Run example-specific checks
    const result = await checks(page, consoleLogs, errors);

    if (errors.length > 0) {
      log(name, 'FAIL', `JS errors: ${errors.join('; ')}`);
    } else if (result === false) {
      log(name, 'FAIL', 'Check failed');
    } else {
      log(name, 'PASS', typeof result === 'string' ? result : 'No JS errors');
    }
  } catch (err) {
    log(name, 'FAIL', err.message);
  } finally {
    if (browser) await browser.close();
    server.close();
  }
}

async function testExpressExample() {
  const dir = path.join(__dirname, 'express');
  const serverJs = path.join(dir, 'dist', 'server.js');
  if (!fs.existsSync(serverJs)) {
    log('express', 'SKIP', 'dist/server.js not found');
    return;
  }

  const { fork } = await import('child_process');
  const child = fork(serverJs, [], { cwd: dir, silent: true });

  try {
    // Wait for server to start
    await new Promise(r => setTimeout(r, 2000));

    const responses = {};
    for (const route of ['/', '/birds', '/birds/about', '/route']) {
      try {
        const res = await fetch(`http://localhost:3000${route}`);
        responses[route] = { status: res.status, body: await res.text() };
      } catch (e) {
        responses[route] = { status: 0, body: e.message };
      }
    }

    const allOk = responses['/'].body.includes('Hello World')
      && responses['/birds'].body.includes('Birds home page')
      && responses['/birds/about'].body.includes('About birds')
      && responses['/route'].body.includes('Example route');

    if (allOk) {
      log('express', 'PASS', 'All 4 routes respond correctly');
    } else {
      log('express', 'FAIL', JSON.stringify(responses));
    }
  } catch (err) {
    log('express', 'FAIL', err.message);
  } finally {
    child.kill();
  }
}

// Main
console.log('\nRuntime testing dts2hx examples...\n');

// Browser examples
await testBrowserExample('babylonjs', async (page, logs, errors) => {
  // BabylonJS creates a canvas and renders a 3D scene
  const hasCanvas = await page.evaluate(() => !!document.querySelector('canvas'));
  if (!hasCanvas) return false;
  // Check that the BABYLON engine is running
  const engineRunning = await page.evaluate(() => typeof BABYLON !== 'undefined');
  return engineRunning ? 'Canvas created, BABYLON engine loaded' : false;
});

await testBrowserExample('phaser', async (page, logs, errors) => {
  // Phaser creates a canvas for the game
  const hasCanvas = await page.evaluate(() => !!document.querySelector('canvas'));
  return hasCanvas ? 'Phaser canvas created' : false;
});

await testBrowserExample('pixi.js', async (page, logs, errors) => {
  // Pixi.js creates a canvas
  const hasCanvas = await page.evaluate(() => !!document.querySelector('canvas'));
  return hasCanvas ? 'PIXI canvas created' : false;
});

await testBrowserExample('playcanvas', async (page, logs, errors) => {
  // PlayCanvas creates a canvas element
  const hasCanvas = await page.evaluate(() => !!document.querySelector('canvas'));
  return hasCanvas ? 'PlayCanvas canvas created' : false;
});

await testBrowserExample('three', async (page, logs, errors) => {
  // Three.js creates a canvas via WebGLRenderer
  const hasCanvas = await page.evaluate(() => !!document.querySelector('canvas'));
  return hasCanvas ? 'Three.js canvas created' : false;
});

// Server example
await testExpressExample();

// Summary
console.log('\n--- Summary ---');
let pass = 0, fail = 0, skip = 0;
for (const [name, r] of Object.entries(results)) {
  if (r.status === 'PASS') pass++;
  else if (r.status === 'FAIL') fail++;
  else skip++;
}
console.log(`  ${pass} passed, ${fail} failed, ${skip} skipped\n`);

// Write results file
const markdown = `# Examples Test Results

| Example | Build | Runtime | Details |
|---------|-------|---------|---------|
${Object.entries(results).map(([name, r]) =>
  `| ${name} | ${r.status === 'SKIP' ? 'NOT BUILT' : 'OK'} | ${r.status} | ${r.detail} |`
).join('\n')}

_Tested: ${new Date().toISOString().split('T')[0]}_
`;

fs.writeFileSync(path.join(__dirname, 'EXAMPLES_STATUS.md'), markdown);
console.log('Results written to examples/EXAMPLES_STATUS.md');

process.exit(fail > 0 ? 1 : 0);
