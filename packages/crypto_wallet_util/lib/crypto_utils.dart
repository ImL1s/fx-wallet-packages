/// By importing this library, you can access most of its functionalities,
/// including：
/// address generation,
/// transaction assembly,
/// address verification,
/// etc.
library crypto_utils;

// Export necessary utils
export 'src/utils/bip32/bip32.dart';
export 'src/utils/bip39/bip39.dart';
export 'src/type/type.dart';

// Export Ethereum transaction related classes (for bc_ur_dart)
export 'src/transaction/eth/tx_signer.dart';
export 'src/transaction/eth/tx_data.dart';
export 'src/transaction/eth/eip1559.dart';
export 'src/transaction/eth/eip7702.dart';
export 'src/transaction/eth/legacy.dart';

// Export Bitcoin Sign Data Type (for bc_ur_dart)
export 'src/transaction/btc/sign_data.dart';

// Ensure generic utils are available if needed
// export 'src/utils/utils.dart';
