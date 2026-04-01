/**
 * TS 4.9: satisfies operator, accessor keyword (auto-accessors)
 */
export namespace TS49 {

    // Auto-accessor keyword (ES2024 decorators proposal)
    class AutoAccessors {
        accessor name: string;
        accessor count: number;
    }

    // satisfies is expression-level, not type-level, so it doesn't appear in .d.ts
    // but the emitted type should be preserved
    interface Palette {
        red: [number, number, number];
        green: string;
        blue: [number, number, number];
    }

    const palette: Palette;
    const auto: AutoAccessors;
}
