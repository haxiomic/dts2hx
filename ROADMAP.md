- Consider moving global types to a package called `global` rather than a separate module
	- See node.js -> would be nice for these to be a single lib
	- This requires checking the access path in generateHaxeTypePath
	- We can do this now. Inaccessible symbols should have the same package as module symbols

- Review: Too many access paths for symbols, need to review (see node)

- How do we handle external lib references like jquery and sizzle
	- Ideally the output would be
		jquery/
			Jquery.hx
		sizzle/
			Sizzle.hx
- Module classes (empty)
- Start on typeToComplex type

- babylon d.ts is borked to heck. It defines the same classes into multiple modules, only a few of which actually exist. Each module generates a type that currently has the same package as the others, so they overwrite each other (and it's not clear the correct one is left)
	-> Could prefix the package path with the root module and remove duplicates
