// Runtime implementations for the ambient declarations in ambient.d.ts
// These simulate globals that would exist in the JS environment

globalThis.globalAdd = function(a, b) { return a + b; };
globalThis.globalVersion = "2.0.0";

globalThis.GlobalLogger = class GlobalLogger {
    constructor(prefix) { this._prefix = prefix; }
    log(message) { return `[${this._prefix}] ${message}`; }
    get prefix() { return this._prefix; }
};

globalThis.GlobalNS = {
    helper: function() { return "helped"; },
    value: 42
};

globalThis.MergedNS = {
    fnA: function() { return "fromA"; },
    fnB: function() { return 99; },
    shared: true
};
