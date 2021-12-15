function main() {
    Test.run('_generated-unit',"./unit/",[
        'ambient',
        'built-in',
        'class',
        'enum',
        'export-array',
        'export-const',
        'export-default',
        'export-function',
        'export-object',
        'export=',
        'interface',
        'named-tuple',
        'symbols',
        'tripple-slash-references',
        'type-parameters',
        'types',
    ],['--verbose', '--noLibWrap']);
}