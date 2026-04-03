package node.nodecolontest.test.eventdata;

typedef TestCoverage = {
	/**
		An object containing the coverage report.
	**/
	var summary : {
		/**
			An array of coverage reports for individual files.
		**/
		var files : Array<{
			/**
				The absolute path of the file.
			**/
			var path : String;
			/**
				The total number of lines.
			**/
			var totalLineCount : Float;
			/**
				The total number of branches.
			**/
			var totalBranchCount : Float;
			/**
				The total number of functions.
			**/
			var totalFunctionCount : Float;
			/**
				The number of covered lines.
			**/
			var coveredLineCount : Float;
			/**
				The number of covered branches.
			**/
			var coveredBranchCount : Float;
			/**
				The number of covered functions.
			**/
			var coveredFunctionCount : Float;
			/**
				The percentage of lines covered.
			**/
			var coveredLinePercent : Float;
			/**
				The percentage of branches covered.
			**/
			var coveredBranchPercent : Float;
			/**
				The percentage of functions covered.
			**/
			var coveredFunctionPercent : Float;
			/**
				An array of functions representing function coverage.
			**/
			var functions : Array<{
				/**
					The name of the function.
				**/
				var name : String;
				/**
					The line number where the function is defined.
				**/
				var line : Float;
				/**
					The number of times the function was called.
				**/
				var count : Float;
			}>;
			/**
				An array of branches representing branch coverage.
			**/
			var branches : Array<{
				/**
					The line number where the branch is defined.
				**/
				var line : Float;
				/**
					The number of times the branch was taken.
				**/
				var count : Float;
			}>;
			/**
				An array of lines representing line numbers and the number of times they were covered.
			**/
			var lines : Array<{
				/**
					The line number.
				**/
				var line : Float;
				/**
					The number of times the line was covered.
				**/
				var count : Float;
			}>;
		}>;
		/**
			An object containing a summary of coverage for all files.
		**/
		var totals : {
			/**
				The total number of lines.
			**/
			var totalLineCount : Float;
			/**
				The total number of branches.
			**/
			var totalBranchCount : Float;
			/**
				The total number of functions.
			**/
			var totalFunctionCount : Float;
			/**
				The number of covered lines.
			**/
			var coveredLineCount : Float;
			/**
				The number of covered branches.
			**/
			var coveredBranchCount : Float;
			/**
				The number of covered functions.
			**/
			var coveredFunctionCount : Float;
			/**
				The percentage of lines covered.
			**/
			var coveredLinePercent : Float;
			/**
				The percentage of branches covered.
			**/
			var coveredBranchPercent : Float;
			/**
				The percentage of functions covered.
			**/
			var coveredFunctionPercent : Float;
		};
		/**
			The working directory when code coverage began. This
			is useful for displaying relative path names in case
			the tests changed the working directory of the Node.js process.
		**/
		var workingDirectory : String;
	};
	/**
		The nesting level of the test.
	**/
	var nesting : Float;
};