// Tests: importing types from another module, re-exporting
import { Point } from './types';

export function distance(a: Point, b: Point): number {
    return Math.sqrt((a.x - b.x) ** 2 + (a.y - b.y) ** 2);
}

export function midpoint(a: Point, b: Point): Point {
    return { x: (a.x + b.x) / 2, y: (a.y + b.y) / 2 };
}

// Re-export from types
export { Point, createPoint } from './types';
