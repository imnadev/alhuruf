/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Al-Huruf.png
  AssetGenImage get alHuruf => const AssetGenImage('assets/icons/Al-Huruf.png');

  /// File path: assets/icons/alert.svg
  SvgGenImage get alert => const SvgGenImage('assets/icons/alert.svg');

  /// File path: assets/icons/apple.svg
  SvgGenImage get apple => const SvgGenImage('assets/icons/apple.svg');

  /// File path: assets/icons/audio_blue.svg
  SvgGenImage get audioBlue => const SvgGenImage('assets/icons/audio_blue.svg');

  /// File path: assets/icons/audio_grey.svg
  SvgGenImage get audioGrey => const SvgGenImage('assets/icons/audio_grey.svg');

  /// File path: assets/icons/back.svg
  SvgGenImage get back => const SvgGenImage('assets/icons/back.svg');

  /// File path: assets/icons/cancel.svg
  SvgGenImage get cancel => const SvgGenImage('assets/icons/cancel.svg');

  /// File path: assets/icons/cancel_circle.svg
  SvgGenImage get cancelCircle =>
      const SvgGenImage('assets/icons/cancel_circle.svg');

  /// File path: assets/icons/check.svg
  SvgGenImage get check => const SvgGenImage('assets/icons/check.svg');

  /// File path: assets/icons/checkmark.svg
  SvgGenImage get checkmark => const SvgGenImage('assets/icons/checkmark.svg');

  /// File path: assets/icons/checkmark_badge.svg
  SvgGenImage get checkmarkBadge =>
      const SvgGenImage('assets/icons/checkmark_badge.svg');

  /// File path: assets/icons/circle_arrow.svg
  SvgGenImage get circleArrow =>
      const SvgGenImage('assets/icons/circle_arrow.svg');

  /// File path: assets/icons/google.svg
  SvgGenImage get google => const SvgGenImage('assets/icons/google.svg');

  /// File path: assets/icons/information.svg
  SvgGenImage get information =>
      const SvgGenImage('assets/icons/information.svg');

  /// File path: assets/icons/information_circle.svg
  SvgGenImage get informationCircle =>
      const SvgGenImage('assets/icons/information_circle.svg');

  /// File path: assets/icons/left_array.svg
  SvgGenImage get leftArray => const SvgGenImage('assets/icons/left_array.svg');

  /// File path: assets/icons/left_play.svg
  SvgGenImage get leftPlay => const SvgGenImage('assets/icons/left_play.svg');

  /// File path: assets/icons/logout.svg
  SvgGenImage get logout => const SvgGenImage('assets/icons/logout.svg');

  /// File path: assets/icons/money.svg
  SvgGenImage get money => const SvgGenImage('assets/icons/money.svg');

  /// File path: assets/icons/play.svg
  SvgGenImage get play => const SvgGenImage('assets/icons/play.svg');

  /// File path: assets/icons/premium_blue.png
  AssetGenImage get premiumBlue =>
      const AssetGenImage('assets/icons/premium_blue.png');

  /// File path: assets/icons/premium_gold.png
  AssetGenImage get premiumGold =>
      const AssetGenImage('assets/icons/premium_gold.png');

  /// File path: assets/icons/premium_green.png
  AssetGenImage get premiumGreen =>
      const AssetGenImage('assets/icons/premium_green.png');

  /// File path: assets/icons/premium_information.svg
  SvgGenImage get premiumInformation =>
      const SvgGenImage('assets/icons/premium_information.svg');

  /// File path: assets/icons/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/icons/profile.png');

  /// File path: assets/icons/right_arrrow.svg
  SvgGenImage get rightArrrow =>
      const SvgGenImage('assets/icons/right_arrrow.svg');

  /// File path: assets/icons/right_play.svg
  SvgGenImage get rightPlay => const SvgGenImage('assets/icons/right_play.svg');

  /// File path: assets/icons/sad.svg
  SvgGenImage get sad => const SvgGenImage('assets/icons/sad.svg');

  /// File path: assets/icons/settings.svg
  SvgGenImage get settings => const SvgGenImage('assets/icons/settings.svg');

  /// File path: assets/icons/speaker.svg
  SvgGenImage get speaker => const SvgGenImage('assets/icons/speaker.svg');

  /// File path: assets/icons/subscribtion.svg
  SvgGenImage get subscribtion =>
      const SvgGenImage('assets/icons/subscribtion.svg');

  /// File path: assets/icons/un_check.svg
  SvgGenImage get unCheck => const SvgGenImage('assets/icons/un_check.svg');

  /// File path: assets/icons/volume.svg
  SvgGenImage get volume => const SvgGenImage('assets/icons/volume.svg');

  /// List of all assets
  List<dynamic> get values => [
    alHuruf,
    alert,
    apple,
    audioBlue,
    audioGrey,
    back,
    cancel,
    cancelCircle,
    check,
    checkmark,
    checkmarkBadge,
    circleArrow,
    google,
    information,
    informationCircle,
    leftArray,
    leftPlay,
    logout,
    money,
    play,
    premiumBlue,
    premiumGold,
    premiumGreen,
    premiumInformation,
    profile,
    rightArrrow,
    rightPlay,
    sad,
    settings,
    speaker,
    subscribtion,
    unCheck,
    volume,
  ];
}

class $AssetsLocalizationGen {
  const $AssetsLocalizationGen();

  /// File path: assets/localization/translations.csv
  String get translations => 'assets/localization/translations.csv';

  /// List of all assets
  List<String> get values => [translations];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsLocalizationGen localization = $AssetsLocalizationGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
