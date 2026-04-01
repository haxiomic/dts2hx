// BigInt test harness — exercises all patterns of bigint usage in .d.ts files

export function addBigInts(a: bigint, b: bigint): bigint {
    return a + b;
}

export function multiplyBigInts(a: bigint, b: bigint): bigint {
    return a * b;
}

export function bigIntToString(b: bigint): string {
    return b.toString();
}

export function makeBigInt(n: number): bigint {
    return BigInt(n);
}

export function compareBigInts(a: bigint, b: bigint): number {
    return a < b ? -1 : a > b ? 1 : 0;
}

export const ZERO: bigint = BigInt(0);
export const MAX_SAFE: bigint = BigInt(Number.MAX_SAFE_INTEGER);

export type BigOrNumber = bigint | number;

export function isBigInt(value: BigOrNumber): value is bigint {
    return typeof value === 'bigint';
}

export interface AccountBalance {
    account: string;
    balance: bigint;
}

export function createBalance(account: string, amount: bigint): AccountBalance {
    return { account, balance: amount };
}

export function getBalance(ab: AccountBalance): bigint {
    return ab.balance;
}
