function main() {
    Test.run('_generated-libs',"",[
        'node',
        'three three/examples/jsm/controls/OrbitControls', // Convert the three + one of its submodules
        'jquery',
        'express',
        'vue',
        'vscode',
        'lowdb',
        'ytdlp-nodejs',
        'chart.js', // #90 - recursive type conversion
    ],['--noDts2hxVersion']);
}