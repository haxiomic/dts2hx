After running
`../cli.js ./unit/types -o _generated-unit`

Sometimes we get

```
/Users/geo/Projects/dts2hx/dist/dts2hx.js:1355
			throw js__$Boot_HaxeError.wrap(e1);
			^

RangeError: Maximum call stack size exceeded
    at $hx_exports.ConverterContext.complexTypeFromTsType (/Users/geo/Projects/dts2hx/dist/dts2hx.js:1355:30)
    at $hx_exports.ConverterContext.fieldFromSymbol (/Users/geo/Projects/dts2hx/dist/dts2hx.js:1843:22)
    at $hx_exports.ConverterContext.complexTypeAnonFromTsType (/Users/geo/Projects/dts2hx/dist/dts2hx.js:1548:24)
    at $hx_exports.ConverterContext.complexTypeFromIntersectionType (/Users/geo/Projects/dts2hx/dist/dts2hx.js:1484:16)
    at $hx_exports.ConverterContext.complexTypeFromTsType (/Users/geo/Projects/dts2hx/dist/dts2hx.js:1329:24)
    at $hx_exports.ConverterContext.fieldFromSymbol (/Users/geo/Projects/dts2hx/dist/dts2hx.js:1843:22)
    at $hx_exports.ConverterContext.complexTypeAnonFromTsType (/Users/geo/Projects/dts2hx/dist/dts2hx.js:1548:24)
    at $hx_exports.ConverterContext.complexTypeFromIntersectionType (/Users/geo/Projects/dts2hx/dist/dts2hx.js:1484:16)
    at $hx_exports.ConverterContext.complexTypeFromTsType (/Users/geo/Projects/dts2hx/dist/dts2hx.js:1329:24)
    at $hx_exports.ConverterContext.fieldFromSymbol (/Users/geo/Projects/dts2hx/dist/dts2hx.js:1843:22)
```

Other times:

```
#
# Fatal error in , line 0
# Check failed: static_cast<uintptr_t>(caller_frame_top_) - total_output_frame_size > stack_guard->real_jslimit().
#
#
#
#FailureMessage Object: 0x7ffeefb09000Illegal instruction: 4
```