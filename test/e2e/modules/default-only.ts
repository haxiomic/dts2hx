// Case: default export class with NO named exports
export default class Renderer {
    private canvas: HTMLCanvasElement | null = null;

    constructor(public width: number, public height: number) {}

    resize(w: number, h: number): void {
        this.width = w;
        this.height = h;
    }

    getAspectRatio(): number {
        return this.width / this.height;
    }

    static create(w: number, h: number): Renderer {
        return new Renderer(w, h);
    }
}
