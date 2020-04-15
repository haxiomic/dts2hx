/**
 * See https://github.com/microsoft/TypeScript/blob/master/doc/spec.md#333-tuple-types
 */
export namespace NamedTuple {
    interface KeyValuePair<K, V> extends Array<K | V> { 0: K; 1: V; }

    var x: KeyValuePair<number, string>;
}
