package vscode;

/**
	Defines the interface of a terminal pty, enabling extensions to control a terminal.
**/
typedef Pseudoterminal = {
	/**
		An event that when fired will write data to the terminal. Unlike
		[Terminal.sendText](#Terminal.sendText) which sends text to the underlying _process_
		(the pty "slave"), this will write the text to the terminal itself (the pty "master").
		
		Note writing `\n` will just move the cursor down 1 row, you need to write `\r` as well
		to move the cursor to the left-most cell.
		
		**Example:** Write red text to the terminal
		```typescript
		const writeEmitter = new vscode.EventEmitter<string>();
		const pty: vscode.Pseudoterminal = {
		   onDidWrite: writeEmitter.event,
		   open: () => writeEmitter.fire('\x1b[31mHello world\x1b[0m'),
		   close: () => {}
		};
		vscode.window.createTerminal({ name: 'My terminal', pty });
		```
		
		**Example:** Move the cursor to the 10th row and 20th column and write an asterisk
		```typescript
		writeEmitter.fire('\x1b[10;20H*');
		```
	**/
	dynamic function onDidWrite(listener:(e:String) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An event that when fired allows overriding the [dimensions](#Pseudoterminal.setDimensions) of the
		terminal. Note that when set, the overridden dimensions will only take effect when they
		are lower than the actual dimensions of the terminal (ie. there will never be a scroll
		bar). Set to `undefined` for the terminal to go back to the regular dimensions (fit to
		the size of the panel).
		
		**Example:** Override the dimensions of a terminal to 20 columns and 10 rows
		```typescript
		const dimensionsEmitter = new vscode.EventEmitter<vscode.TerminalDimensions>();
		const pty: vscode.Pseudoterminal = {
		   onDidWrite: writeEmitter.event,
		   onDidOverrideDimensions: dimensionsEmitter.event,
		   open: () => {
		     dimensionsEmitter.fire({
		       columns: 20,
		       rows: 10
		     });
		   },
		   close: () => {}
		};
		vscode.window.createTerminal({ name: 'My terminal', pty });
		```
	**/
	@:optional
	dynamic function onDidOverrideDimensions(listener:(e:Null<TerminalDimensions>) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An event that when fired will signal that the pty is closed and dispose of the terminal.
		
		A number can be used to provide an exit code for the terminal. Exit codes must be
		positive and a non-zero exit codes signals failure which shows a notification for a
		regular terminal and allows dependent tasks to proceed when used with the
		`CustomExecution` API.
		
		**Example:** Exit the terminal when "y" is pressed, otherwise show a notification.
		```typescript
		const writeEmitter = new vscode.EventEmitter<string>();
		const closeEmitter = new vscode.EventEmitter<vscode.TerminalDimensions>();
		const pty: vscode.Pseudoterminal = {
		   onDidWrite: writeEmitter.event,
		   onDidClose: closeEmitter.event,
		   open: () => writeEmitter.fire('Press y to exit successfully'),
		   close: () => {},
		   handleInput: data => {
		     if (data !== 'y') {
		       vscode.window.showInformationMessage('Something went wrong');
		     }
		     closeEmitter.fire();
		   }
		};
		vscode.window.createTerminal({ name: 'Exit example', pty });
		```
	**/
	@:optional
	dynamic function onDidClose(listener:(e:ts.AnyOf2<Float, ts.Undefined>) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		Implement to handle when the pty is open and ready to start firing events.
	**/
	function open(initialDimensions:Null<TerminalDimensions>):Void;
	/**
		Implement to handle when the terminal is closed by an act of the user.
	**/
	function close():Void;
	/**
		Implement to handle incoming keystrokes in the terminal or when an extension calls
		[Terminal.sendText](#Terminal.sendText). `data` contains the keystrokes/text serialized into
		their corresponding VT sequence representation.
	**/
	@:optional
	function handleInput(data:String):Void;
	/**
		Implement to handle when the number of rows and columns that fit into the terminal panel
		changes, for example when font size changes or when the panel is resized. The initial
		state of a terminal's dimensions should be treated as `undefined` until this is triggered
		as the size of a terminal isn't know until it shows up in the user interface.
		
		When dimensions are overridden by
		[onDidOverrideDimensions](#Pseudoterminal.onDidOverrideDimensions), `setDimensions` will
		continue to be called with the regular panel dimensions, allowing the extension continue
		to react dimension changes.
	**/
	@:optional
	function setDimensions(dimensions:TerminalDimensions):Void;
};