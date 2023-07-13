<!-- <p align="center">
  <a href="https://github.com/coder0211/coder0211"><img src="https://raw.githubusercontent.com/slimaeus/semibox_mobx_base_utils/main/lib/logo/logo.svg" width="200" alt="Coder0211-logo"></a>
</p> -->
<p align="center">
  <a href="https://pub.dev/packages/semibox_mobx_base_utils/score" target="_blank"><img src="https://img.shields.io/badge/PUB%20POINTS-140%2F140-green" alt="pub points" /></a>
  <a href="https://pub.dev/packages/semibox_mobx_base_utils/score" target="_blank"><img src="https://img.shields.io/badge/Coder0211-likes%3A22-yellow" alt="semibox_mobx_base_utils-like" /></a>
  <a href="https://pub.dev/packages/semibox_mobx_base_utils/license" target="_blank"><img src="https://img.shields.io/badge/LICENSE-MIT-blue" alt="Package License" /></a>  
</p>

# Semibox mobx base utils

This is a package with functions and widgets to make app development faster and more convenient, currently it is developed by one developer.

# Support

## 1. Base screen

### [BaseScreen] is a base class for all screens in the app.

- It provides some useful methods for screens.
- Every screen should extend this class.
- Example:

```dart
class MyHomePage extends BaseScreen {
     const MyHomePage({Key? key}) : super(key: key);
     @override
     State<MyHomePage> createState() => _MyHomePageState();
}
```

### [BaseScreenState] is a base class for all screen states in the app.

- It provides the [store].
- AutomaticKeepAliveClientMixin is used to keep the screen alive when the user
  navigates to another screen.
- It also provides the [initState] method to initialize the [store] instance.
- It also provides the [build] method to build the screen.
- Every screen state should extend this class.
- [BaseScreenState] is a stateful widget.
- Example:

```dart
class _MyHomePageState extends BaseScreenState<MyHomePage, MainStore> {}
```

## 2. Store

### State managements

```dart
/// Clean before updating:
///    flutter packages pub run build_runner watch --delete-conflicting-outputs

part 'example_store.g.dart';

class ExampleStore = _ExampleStore with _$ExampleStore;

abstract class _ExampleStore with Store, BaseStoreMixin {
  @override
  void onInit(BuildContext context) {}

  @override
  void onDispose() {}
}
```