import { chromium } from 'playwright';
import { exec, execSync } from 'child_process';

// Start server
const server = exec('npx serve -l 3456 -s .', { stdio: 'ignore' });
await new Promise(r => setTimeout(r, 2000));

try {
  const browser = await chromium.launch({ headless: true });
  const page = await browser.newPage();

  const errors = [];
  const logs = [];

  page.on('console', msg => {
    const text = msg.text();
    logs.push(`[${msg.type()}] ${text}`);
    if (msg.type() === 'error') errors.push(text);
  });

  page.on('pageerror', err => {
    errors.push(`PAGE ERROR: ${err.message}`);
  });

  console.log('Loading page...');
  await page.goto('http://localhost:3456/index.html', { waitUntil: 'domcontentloaded' });

  // Wait for WebGL to initialize and a few frames to render
  await page.waitForTimeout(3000);

  // Check for canvas
  const canvasInfo = await page.evaluate(() => {
    const canvas = document.querySelector('canvas');
    if (!canvas) return { exists: false };
    return {
      exists: true,
      width: canvas.width,
      height: canvas.height,
    };
  });

  console.log('\n=== Results ===');
  console.log('Canvas:', JSON.stringify(canvasInfo));
  console.log('Console logs:', logs.length);
  console.log('Errors:', errors.length);
  if (errors.length > 0) {
    console.log('\n=== Errors ===');
    errors.forEach(e => console.log('  ', e));
  }
  if (logs.length > 0) {
    console.log('\n=== Logs ===');
    logs.slice(0, 30).forEach(l => console.log('  ', l));
    if (logs.length > 30) console.log(`  ... and ${logs.length - 30} more`);
  }

  await page.screenshot({ path: '/tmp/three-bloom-test.png' });
  console.log('\nScreenshot: /tmp/three-bloom-test.png');

  await browser.close();
  server.kill();

  if (errors.length > 0) {
    console.log('\nFAILED: ' + errors.length + ' error(s)');
    process.exit(1);
  } else {
    console.log('\nPASSED: No runtime errors');
    process.exit(0);
  }
} catch (e) {
  console.error('Test error:', e.message);
  server.kill();
  process.exit(1);
}
