
import 'package:vxstate/vxstate.dart';

import 'package:mocha_hive/stores/main_page_store.dart';


class SetOnSearchBarChanged extends VxMutation<MainPageStore> {
  final Function? onSearchBarChanged;

  SetOnSearchBarChanged(this.onSearchBarChanged);

  @override
  perform() {
    if (store == null) return;
    store!.onSearchBarChanged = onSearchBarChanged;
  }
}