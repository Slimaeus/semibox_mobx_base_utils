import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

///[BaseScreenMixin] is a base class for all screen mixins in the app.
///It provides the [store].
mixin BaseScreenMixin<T extends BaseStoreMixin> {
  late T store;
}

mixin BaseStoreMixin on Store {
  @protected
  @mustCallSuper

  ///onInit called when initState called
  void onInit(BuildContext context);

  @protected
  @mustCallSuper

  ///onDispose called when dispose
  void onDispose(BuildContext context);
}
