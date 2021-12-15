function main() {
    Test.run('_generated-libs',"",[
        'node',
        'three three/examples/jsm/controls/OrbitControls', // Convert the three + one of its submodules
        'jquery',
        'express',
        'vue',
        'vscode',
        'lowdb',
    ],['--noDts2hxVersion']);
}