import 'dart:typed_data';

import 'package:crypto_wallet_util/src/utils/utils.dart';
import 'package:blockchain_utils/blockchain_utils.dart';

extension hexList on List<int> {
  Uint8List toUint8List() => Uint8List.fromList(this);
  String toStr() => dynamicToString(this);
  String toHex() => dynamicToHex(this);
}

extension hexUint8List on Uint8List {
  String toStr() => dynamicToString(this);
  String toHex() => dynamicToHex(this);
}

extension hexString on String {
  String toStr() => dynamicToString(this);
  String toHex() => dynamicToString(this);
  Uint8List toUint8List() => dynamicToUint8List(this);
}

extension BigIntExtension on BigInt {
  /// Converts this [BigInt] to a [Uint8List].
  Uint8List toUint8List([final int? length]) {
    final int byteLength = length ?? (bitLength + 7) ~/ 8;
    return Uint8List.fromList(
      BigintUtils.toBytes(this, length: byteLength, order: Endian.little),
    );
  }

  /// Creates a [BigInt] from an array of [bytes].
  static BigInt fromUint8List(
    final Iterable<int> bytes, [
    final Endian endian = Endian.little,
  ]) {
    return BigintUtils.fromBytes(
      Uint8List.fromList(bytes.toList()),
      byteOrder: endian,
    );
  }
}
