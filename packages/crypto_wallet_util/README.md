# crypto_wallet_util (Forked)

This is a fork of [FXWallet/fx-wallet-packages](https://github.com/AiFxWallet/fx-wallet-packages) with modifications to support modern `blockchain_utils` versions.

## Why This Fork?

The original `crypto_wallet_util` package depends on `blockchain_utils ^1.x`, which conflicts with newer projects requiring `blockchain_utils ^5.4.0`. This fork resolves the version incompatibility while maintaining compatibility with `bc_ur_dart`.

## Problems Solved

### 1. Dependency Version Conflict
- **Original**: `blockchain_utils: ^1.4.1`
- **This Fork**: `blockchain_utils: ^5.4.0`

### 2. API Breaking Changes
Updated internal code to use new `blockchain_utils` v5 APIs:
- `BigintUtils.toBytes()` parameter changes (`order` instead of `endian`)
- Removed deprecated `Buffer` usage
- Fixed type mismatches (`List<int>` vs `Uint8List`)

### 3. bc_ur_dart Compatibility
Maintained required exports for `bc_ur_dart` integration:
- `lib/utils.dart` - Exports utility functions including `dynamicToUint8List`
- `lib/transaction.dart` - Stub classes for `GsplTxData`, `GsplItem`, `BtcSignDataType`
- `lib/crypto_utils.dart` - Added exports for `TxNetwork`, `EthTxDataRaw`

### 4. Code Fixes
- Fixed typo in `bigint.dart` (`ㄍimport` → `import`)
- Removed duplicate `TxNetwork` definitions
- Cleaned up unused forked code

## Usage

In your `pubspec.yaml`, use `dependency_overrides`:

```yaml
dependency_overrides:
  crypto_wallet_util:
    path: /path/to/this/fork/packages/crypto_wallet_util
  blockchain_utils: ^5.4.0
  bitcoin_base: ^6.9.0
```

## Upstream Repository

Original: https://github.com/AiFxWallet/fx-wallet-packages
