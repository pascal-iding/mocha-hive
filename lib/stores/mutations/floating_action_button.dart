
import 'package:flutter/material.dart';
import 'package:vxstate/vxstate.dart';

import 'package:mocha_hive/stores/main_page_store.dart';


class SetOnFloatingActionButtonClicked extends VxMutation<MainPageStore> {
  final Function? onFloatingActionButtonClicked;

  SetOnFloatingActionButtonClicked(this.onFloatingActionButtonClicked);

  @override
  perform() {
    if (store == null) return;
    store!.onFloatingActionButtonClicked = onFloatingActionButtonClicked;
  }
}