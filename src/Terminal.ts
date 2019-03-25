import * as util from 'util';
import * as process from 'process';

export default class Terminal {

	private static currentRewriteId: string | undefined = undefined;

	static lineCaret = '<b>></b>';

	static log(...args: Array<any>) {
		this.write(format(`<gray>${this.lineCaret}</gray> ` + util.format.apply(this, args as any)) + '\n');
	}

	static error(...args: Array<any>) {
		this.write(format(`<red>${this.lineCaret} <b>Error:</b> ` + util.format.apply(this, args as any)) + '\n');
	}

	static warn(...args: Array<any>) {
		this.write(format(`<yellow>${this.lineCaret} <b>Warning:</b> ` + util.format.apply(this, args as any)) + '\n');
	}

	static success(...args: Array<any>) {
		this.write(format(`<light_green>${this.lineCaret} ` + util.format.apply(this, args as any)) + '\n');
	}

	static rewriteLine(id: string, str: string) {
		if (this.currentRewriteId === id && id !== undefined) {
			this.clearLine();
		}

		process.stdout.write(str);

		this.currentRewriteId = id;
	}

	static rewriteLineFormatted(id: string, str: string) {
		this.rewriteLine(id, format(str));
	}

	static format(str: string) {
		return format(str);
	}

	static writeLine(str: string) {
		return this.write(str + '\n');
	}

	static writeLineFormatted(str: string) {
		return this.writeFormatted(str + '\n');
	}

	static write(str: string) {
		if (this.currentRewriteId !== undefined) {
			process.stdout.write('\n');
			this.currentRewriteId = undefined;
		}

		process.stdout.write(str);
	}

	static writeFormatted(str: string) {
		if (this.currentRewriteId !== undefined) {
			process.stdout.write('\n');
			this.currentRewriteId = undefined;
		}

		Terminal.write(format(str));
	}

	static clearLine(resetCursor = true) {
		// erase line content and reset the cursor to start of the line
		process.stdout.write('\x1B[2K');
		if (resetCursor) {
			process.stdout.write('\r');
		}
	}

	/*
	static cursorUp() {
		this.currentRewriteId = undefined;
		process.stdout.write('\x1B[A'); // cursor up
	}
	*/

}

enum FormatFlag {
	'RESET',
	'BOLD',
	'ITALIC',
	'DIM',
	'UNDERLINE',
	'BLINK',
	'INVERT',
	'HIDDEN',
	'BLACK',
	'RED',
	'GREEN',
	'YELLOW',
	'BLUE',
	'MAGENTA',
	'CYAN',
	'WHITE',
	'LIGHT_BLACK',
	'LIGHT_RED',
	'LIGHT_GREEN',
	'LIGHT_YELLOW',
	'LIGHT_BLUE',
	'LIGHT_MAGENTA',
	'LIGHT_CYAN',
	'LIGHT_WHITE',
	'BG_BLACK',
	'BG_RED',
	'BG_GREEN',
	'BG_YELLOW',
	'BG_BLUE',
	'BG_MAGENTA',
	'BG_CYAN',
	'BG_WHITE',
	'BG_LIGHT_BLACK',
	'BG_LIGHT_RED',
	'BG_LIGHT_GREEN',
	'BG_LIGHT_YELLOW',
	'BG_LIGHT_BLUE',
	'BG_LIGHT_MAGENTA',
	'BG_LIGHT_CYAN',
	'BG_LIGHT_WHITE',
}

const ASCII_BLACK_CODE = 0;
const ASCII_RED_CODE = 1;
const ASCII_GREEN_CODE = 2;
const ASCII_YELLOW_CODE = 3;
const ASCII_BLUE_CODE = 4;
const ASCII_MAGENTA_CODE = 5;
const ASCII_CYAN_CODE = 6;
const ASCII_WHITE_CODE = 7;
const ASCII_LIGHT_BLACK_CODE = 8;
const ASCII_LIGHT_RED_CODE = 9;
const ASCII_LIGHT_GREEN_CODE = 10;
const ASCII_LIGHT_YELLOW_CODE = 11;
const ASCII_LIGHT_BLUE_CODE = 12;
const ASCII_LIGHT_MAGENTA_CODE = 13;
const ASCII_LIGHT_CYAN_CODE = 14;
const ASCII_LIGHT_WHITE_CODE = 15;

function formatFlagFromTag(tagStr: string): FormatFlag | null {
	tagStr = tagStr.toUpperCase();

	switch (tagStr) {
		case '/': return FormatFlag.RESET;
		case '!': return FormatFlag.INVERT;
		case 'U': return FormatFlag.UNDERLINE;
		case 'B': return FormatFlag.BOLD;
		case 'I': return FormatFlag.ITALIC;
		case 'GRAY': return FormatFlag.LIGHT_BLACK;
		case 'BG_GRAY': return FormatFlag.BG_LIGHT_BLACK;
		default: {
			let enumValue = FormatFlag[tagStr as any];
			return enumValue == null ? null : (enumValue as any);
		}
	}
}

function getAsciiFormat(flag: FormatFlag): string {
	switch (flag) {
		case FormatFlag.RESET: return '\x1B[m';

		case FormatFlag.BOLD: return '\x1B[1m';
		case FormatFlag.DIM: return '\x1B[2m';
		case FormatFlag.ITALIC: return '\x1B[3m';
		case FormatFlag.UNDERLINE: return '\x1B[4m';
		case FormatFlag.BLINK: return '\x1B[5m';
		case FormatFlag.INVERT: return '\x1B[7m';
		case FormatFlag.HIDDEN: return '\x1B[8m';

		case FormatFlag.BLACK: return '\x1B[38;5;' + ASCII_BLACK_CODE + 'm';
		case FormatFlag.RED: return '\x1B[38;5;' + ASCII_RED_CODE + 'm';
		case FormatFlag.GREEN: return '\x1B[38;5;' + ASCII_GREEN_CODE + 'm';
		case FormatFlag.YELLOW: return '\x1B[38;5;' + ASCII_YELLOW_CODE + 'm';
		case FormatFlag.BLUE: return '\x1B[38;5;' + ASCII_BLUE_CODE + 'm';
		case FormatFlag.MAGENTA: return '\x1B[38;5;' + ASCII_MAGENTA_CODE + 'm';
		case FormatFlag.CYAN: return '\x1B[38;5;' + ASCII_CYAN_CODE + 'm';
		case FormatFlag.WHITE: return '\x1B[38;5;' + ASCII_WHITE_CODE + 'm';
		case FormatFlag.LIGHT_BLACK: return '\x1B[38;5;' + ASCII_LIGHT_BLACK_CODE + 'm';
		case FormatFlag.LIGHT_RED: return '\x1B[38;5;' + ASCII_LIGHT_RED_CODE + 'm';
		case FormatFlag.LIGHT_GREEN: return '\x1B[38;5;' + ASCII_LIGHT_GREEN_CODE + 'm';
		case FormatFlag.LIGHT_YELLOW: return '\x1B[38;5;' + ASCII_LIGHT_YELLOW_CODE + 'm';
		case FormatFlag.LIGHT_BLUE: return '\x1B[38;5;' + ASCII_LIGHT_BLUE_CODE + 'm';
		case FormatFlag.LIGHT_MAGENTA: return '\x1B[38;5;' + ASCII_LIGHT_MAGENTA_CODE + 'm';
		case FormatFlag.LIGHT_CYAN: return '\x1B[38;5;' + ASCII_LIGHT_CYAN_CODE + 'm';
		case FormatFlag.LIGHT_WHITE: return '\x1B[38;5;' + ASCII_LIGHT_WHITE_CODE + 'm';

		case FormatFlag.BG_BLACK: return '\x1B[48;5;' + ASCII_BLACK_CODE + 'm';
		case FormatFlag.BG_RED: return '\x1B[48;5;' + ASCII_RED_CODE + 'm';
		case FormatFlag.BG_GREEN: return '\x1B[48;5;' + ASCII_GREEN_CODE + 'm';
		case FormatFlag.BG_YELLOW: return '\x1B[48;5;' + ASCII_YELLOW_CODE + 'm';
		case FormatFlag.BG_BLUE: return '\x1B[48;5;' + ASCII_BLUE_CODE + 'm';
		case FormatFlag.BG_MAGENTA: return '\x1B[48;5;' + ASCII_MAGENTA_CODE + 'm';
		case FormatFlag.BG_CYAN: return '\x1B[48;5;' + ASCII_CYAN_CODE + 'm';
		case FormatFlag.BG_WHITE: return '\x1B[48;5;' + ASCII_WHITE_CODE + 'm';
		case FormatFlag.BG_LIGHT_BLACK: return '\x1B[48;5;' + ASCII_LIGHT_BLACK_CODE + 'm';
		case FormatFlag.BG_LIGHT_RED: return '\x1B[48;5;' + ASCII_LIGHT_RED_CODE + 'm';
		case FormatFlag.BG_LIGHT_GREEN: return '\x1B[48;5;' + ASCII_LIGHT_GREEN_CODE + 'm';
		case FormatFlag.BG_LIGHT_YELLOW: return '\x1B[48;5;' + ASCII_LIGHT_YELLOW_CODE + 'm';
		case FormatFlag.BG_LIGHT_BLUE: return '\x1B[48;5;' + ASCII_LIGHT_BLUE_CODE + 'm';
		case FormatFlag.BG_LIGHT_MAGENTA: return '\x1B[48;5;' + ASCII_LIGHT_MAGENTA_CODE + 'm';
		case FormatFlag.BG_LIGHT_CYAN: return '\x1B[48;5;' + ASCII_LIGHT_CYAN_CODE + 'm';
		case FormatFlag.BG_LIGHT_WHITE: return '\x1B[48;5;' + ASCII_LIGHT_WHITE_CODE + 'm';

		default: return '';
	}
}

function format(message: string) {
	let formatPattern = /<(\/)?([^><{}]*|{[^}<>]*})>/g;

	let activeFormatFlagStack = new Array<FormatFlag>();
	let groupedProceedingTags = new Array<number>();

	function addFlag(flag: FormatFlag, proceedingTags: number) {
		activeFormatFlagStack.push(flag);
		groupedProceedingTags.push(proceedingTags);
	}

	function removeFlag(flag: FormatFlag) {
		let i = activeFormatFlagStack.indexOf(flag);
		if (i !== -1) {
			let proceedingTags = groupedProceedingTags[i];
			// remove n tags
			activeFormatFlagStack.splice(i - proceedingTags, proceedingTags + 1);
			groupedProceedingTags.splice(i - proceedingTags, proceedingTags + 1);
		}
	}

	function resetFlags() {
		activeFormatFlagStack = [];
		groupedProceedingTags = [];
	}

	let formatted = message.replace(formatPattern, (substr: string, closeModifier: string, tagStr: string) => {
		let open = closeModifier == null;

		let tags = tagStr.split(',').map((tag) => tag.trim());

		// handle </> and <//>
		if (!open && tags.length === 1) {
			if (tags[0] == '') {
				// we've got a shorthand to close the last tag: </>
				let last = activeFormatFlagStack[activeFormatFlagStack.length - 1];
				removeFlag(last);
			} else if (formatFlagFromTag(tags[0]) == FormatFlag.RESET) {
				resetFlags();
			} else {
				// handle </*>
				let flag = formatFlagFromTag(tags[0]);
				if (flag != null) {
					removeFlag(flag);
				}
			}
		} else {
			let proceedingTags = 0;
			for (let tag of tags) {
				let flag = formatFlagFromTag(tag);
				if (flag == null) return substr; // unhandled tag, don't treat as formatting
				if (open) {
					addFlag(flag, proceedingTags);
					proceedingTags++;
				} else {
					removeFlag(flag);
				}
			}
		}

		// since format flags are cumulative, we only need to add the last item if it's an open tag
		if (open) {
			if (activeFormatFlagStack.length > 0) {
				let lastFlagCount = groupedProceedingTags[groupedProceedingTags.length - 1] + 1;
				let asciiFormatString = '';
				for (let i = 0; i < lastFlagCount; i++) {
					let idx = groupedProceedingTags.length - 1 - i;
					asciiFormatString += getAsciiFormat(activeFormatFlagStack[idx]);
				}
				return asciiFormatString;
			} else {
				return '';
			}
		} else {
			return getAsciiFormat(FormatFlag.RESET) + activeFormatFlagStack.map((f) => getAsciiFormat(f)).filter((s) => s != null).join('');
		}
	});

	return formatted;
}