// Tests for @:native field handling in anonymous typedefs
// These patterns cause issues when generating abstract wrappers

// Basic: fields with JS-incompatible names
export interface HttpHeaders {
    "content-type"?: string;
    "set-cookie"?: string[];  // name starts with "set-" — collides with setter naming
    cookie?: string;          // "set_cookie" setter collides with "set-cookie" field
    accept?: string;
}

// Generic function fields — type parameters must not be lost
export interface Router {
    get<P extends string>(path: P, handler: (req: any, res: any) => void): Router;
    post<P extends string>(path: P, handler: (req: any, res: any) => void): Router;
}

// Function-typed fields with named/optional params
export interface RenderEngine {
    render(view: string, options?: object, callback?: (err: Error, html: string) => void): void;
}

// Mixed: some fields need @:native, some don't
export interface Config {
    "max-age": number;
    "cache-control"?: string;
    debug: boolean;
    verbose: boolean;
}

export function createHeaders(): HttpHeaders;
export function createConfig(): Config;
