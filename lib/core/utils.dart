import 'package:open_store/open_store.dart';

void openStore() {
  OpenStore.instance.open(
    appStoreId: '284815942',
    appStoreIdMacOS: '284815942',
    androidAppBundleId: 'com.google.android.googlequicksearchbox',
    windowsProductId: '9NZTWSQNTD0S',
  );
}
