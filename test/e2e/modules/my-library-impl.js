// Runtime implementation for `declare module "my-library"`
module.exports = {
    doWork: function(input) { return input.toUpperCase(); },
    Worker: class Worker {
        constructor(name) { this.name = name; }
        run() { return `${this.name} running`; }
    },
    VERSION: "3.0.0"
};
