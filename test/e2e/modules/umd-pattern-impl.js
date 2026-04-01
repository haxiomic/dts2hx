// UMD runtime: works both as global and as CJS module
(function(root, factory) {
    if (typeof module === 'object' && module.exports) {
        module.exports = factory();
    } else {
        root.MyUmdLib = factory();
    }
})(typeof globalThis !== 'undefined' ? globalThis : this, function() {
    return {
        doStuff: function(x) { return "result:" + x; },
        version: "1.0.0",
        Widget: class Widget {
            constructor(name) { this.name = name; }
            render() { return "<" + this.name + "/>"; }
        }
    };
});
