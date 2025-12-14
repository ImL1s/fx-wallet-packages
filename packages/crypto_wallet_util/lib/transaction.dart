import 'dart:typed_data';

/// Transaction module exports for bc_ur_dart compatibility

// Export BtcSignDataType from its original location
export 'src/transaction/btc/sign_data.dart';

/// Stub class for GsplTxData - required by bc_ur_dart
class GsplTxData {
  final List<GsplItem> inputs;
  final String hex;
  final BtcSignDataType dataType;
  final GsplItem? change;

  GsplTxData({
    this.inputs = const [],
    this.hex = '',
    this.dataType = BtcSignDataType.ZERO,
    this.change,
  });
}

/// Stub class for GsplItem - required by bc_ur_dart
class GsplItem {
  final String? path;
  final String? address;
  final int? amount;
  final Uint8List? signature;
  final int? signHashType;

  GsplItem({
    this.path,
    this.address,
    this.amount,
    this.signature,
    this.signHashType,
  });
}

/// Re-export BtcSignDataType for completeness
enum BtcSignDataType { ZERO, TRANSACTION, MESSAGE }
