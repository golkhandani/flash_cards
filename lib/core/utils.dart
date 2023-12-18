import 'package:open_store/open_store.dart';

void openStore() {
  OpenStore.instance.open(
    appStoreId: '6474517460',
    appStoreIdMacOS: '6474517460',
    androidAppBundleId: 'com.mrzg.wordWiseFlashCards',
    windowsProductId: '6474517460',
  );
}
