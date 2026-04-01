// Shared types used across modules — tests re-export and cross-module type references

export interface Point {
    x: number;
    y: number;
}

export interface Size {
    width: number;
    height: number;
}

export type Rectangle = Point & Size;

export function createPoint(x: number, y: number): Point {
    return { x, y };
}

export function createRect(x: number, y: number, w: number, h: number): Rectangle {
    return { x, y, width: w, height: h };
}
