import 'dart:typed_data';
import 'package:blockchain_utils/blockchain_utils.dart';

/// Function for convert a [Uint8List] to [BigInt].
BigInt u8aToBn(Uint8List input, {Endian endian = Endian.big}) {
  return BigintUtils.fromBytes(input, byteOrder: endian);
}

Uint8List toUnsigned(BigInt unsignedInt) {
  // Simple implementation or use blockchain_utils if available
  return Uint8List.fromList(
    BigintUtils.toBytes(unsignedInt, length: 32, order: Endian.big),
  );
}

BigInt hexToBigInt(String hex) {
  if (hex.startsWith('0x')) {
    hex = hex.substring(2);
  }
  if (hex.isEmpty) return BigInt.zero;
  return BigInt.parse(hex, radix: 16);
}

Uint8List bigToBytes(BigInt number) {
  // Assuming big endian for standard usage?
  return Uint8List.fromList(
    BigintUtils.toBytes(number, length: 32, order: Endian.big),
  );
}

Uint8List encodeBigIntBe(BigInt number, {int? length}) {
  int len = length ?? ((number.bitLength + 7) ~/ 8);
  if (len == 0 && number != BigInt.zero) len = 1;
  return Uint8List.fromList(
    BigintUtils.toBytes(number, length: len, order: Endian.big),
  );
}

Uint8List encodeBigInt(BigInt number) {
  return encodeBigIntBe(number);
}
