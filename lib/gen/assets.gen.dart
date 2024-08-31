import 'package:flutter/widgets.dart';
import 'package:rive/rive.dart';

class $AssetsAnimationsGen {
  const $AssetsAnimationsGen();

  /// File path: assets/animations/loading.riv
  RiveGenImage get loading =>
      const RiveGenImage('assets/loading.riv');

  /// Directory path: assets/animations
  String get path => 'assets';

  /// List of all assets
  List<RiveGenImage> get values => [loading];
}

class Assets {
  Assets._();

  static const $AssetsAnimationsGen animations = $AssetsAnimationsGen();
}

class RiveGenImage {
  const RiveGenImage(
    this._assetName, {
    this.flavors = const {},
  });

  final String _assetName;
  final Set<String> flavors;

  RiveAnimation rive({
    String? artboard,
    List<String> animations = const [],
    List<String> stateMachines = const [],
    BoxFit? fit,
    Alignment? alignment,
    Widget? placeHolder,
    bool antialiasing = true,
    bool useArtboardSize = false,
    List<RiveAnimationController> controllers = const [],
    OnInitCallback? onInit,
  }) {
    return RiveAnimation.asset(
      _assetName,
      artboard: artboard,
      animations: animations,
      stateMachines: stateMachines,
      fit: fit,
      alignment: alignment,
      placeHolder: placeHolder,
      antialiasing: antialiasing,
      useArtboardSize: useArtboardSize,
      controllers: controllers,
      onInit: onInit,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
