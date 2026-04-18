// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:lottie/lottie.dart' as _lottie;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/rustam_quranR3HOQ.ttf
  String get rustamQuranR3HOQ => 'assets/fonts/rustam_quranR3HOQ.ttf';

  /// List of all assets
  List<String> get values => [rustamQuranR3HOQ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Shaykh_Hazem.png
  AssetGenImage get shaykhHazem =>
      const AssetGenImage('assets/images/Shaykh_Hazem.png');

  /// File path: assets/images/access_ascent.png
  AssetGenImage get accessAscent =>
      const AssetGenImage('assets/images/access_ascent.png');

  /// File path: assets/images/basePattern.png
  AssetGenImage get basePattern =>
      const AssetGenImage('assets/images/basePattern.png');

  /// File path: assets/images/bead.png
  AssetGenImage get bead => const AssetGenImage('assets/images/bead.png');

  /// File path: assets/images/biometric.png
  AssetGenImage get biometric =>
      const AssetGenImage('assets/images/biometric.png');

  /// File path: assets/images/book.png
  AssetGenImage get book => const AssetGenImage('assets/images/book.png');

  /// File path: assets/images/calender.png
  AssetGenImage get calender =>
      const AssetGenImage('assets/images/calender.png');

  /// File path: assets/images/calender_icon.png
  AssetGenImage get calenderIcon =>
      const AssetGenImage('assets/images/calender_icon.png');

  /// File path: assets/images/cloud-download.png
  AssetGenImage get cloudDownload =>
      const AssetGenImage('assets/images/cloud-download.png');

  /// File path: assets/images/fingerprint.png
  AssetGenImage get fingerprint =>
      const AssetGenImage('assets/images/fingerprint.png');

  /// File path: assets/images/home.png
  AssetGenImage get home => const AssetGenImage('assets/images/home.png');

  /// File path: assets/images/home_pattern.png
  AssetGenImage get homePattern =>
      const AssetGenImage('assets/images/home_pattern.png');

  /// File path: assets/images/info_qasida.png
  AssetGenImage get infoQasida =>
      const AssetGenImage('assets/images/info_qasida.png');

  /// File path: assets/images/isbn_ghazalian_answers_book.png
  AssetGenImage get isbnGhazalianAnswersBook =>
      const AssetGenImage('assets/images/isbn_ghazalian_answers_book.png');

  /// File path: assets/images/language.png
  AssetGenImage get language =>
      const AssetGenImage('assets/images/language.png');

  /// File path: assets/images/logo2.jpeg
  AssetGenImage get logo2 => const AssetGenImage('assets/images/logo2.jpeg');

  /// File path: assets/images/newFeatureBadge.json
  LottieGenImage get newFeatureBadge =>
      const LottieGenImage('assets/images/newFeatureBadge.json');

  /// File path: assets/images/new_badge.png
  AssetGenImage get newBadge =>
      const AssetGenImage('assets/images/new_badge.png');

  /// File path: assets/images/notepad.png
  AssetGenImage get notepad => const AssetGenImage('assets/images/notepad.png');

  /// File path: assets/images/open_book.png
  AssetGenImage get openBook =>
      const AssetGenImage('assets/images/open_book.png');

  /// File path: assets/images/page_image.png
  AssetGenImage get pageImage =>
      const AssetGenImage('assets/images/page_image.png');

  /// File path: assets/images/pattern.png
  AssetGenImage get pattern => const AssetGenImage('assets/images/pattern.png');

  /// File path: assets/images/qibla.png
  AssetGenImage get qibla => const AssetGenImage('assets/images/qibla.png');

  /// File path: assets/images/ra.png
  AssetGenImage get ra => const AssetGenImage('assets/images/ra.png');

  /// File path: assets/images/repost.png
  AssetGenImage get repost => const AssetGenImage('assets/images/repost.png');

  /// File path: assets/images/setting.png
  AssetGenImage get setting => const AssetGenImage('assets/images/setting.png');

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// File path: assets/images/splash_logo.png
  AssetGenImage get splashLogo =>
      const AssetGenImage('assets/images/splash_logo.png');

  /// File path: assets/images/star.png
  AssetGenImage get star => const AssetGenImage('assets/images/star.png');

  /// File path: assets/images/tasbeeh.png
  AssetGenImage get tasbeeh => const AssetGenImage('assets/images/tasbeeh.png');

  /// File path: assets/images/tasbeeh_counter_layout.svg
  SvgGenImage get tasbeehCounterLayout =>
      const SvgGenImage('assets/images/tasbeeh_counter_layout.svg');

  /// File path: assets/images/timer.png
  AssetGenImage get timer => const AssetGenImage('assets/images/timer.png');

  /// List of all assets
  List<dynamic> get values => [
    shaykhHazem,
    accessAscent,
    basePattern,
    bead,
    biometric,
    book,
    calender,
    calenderIcon,
    cloudDownload,
    fingerprint,
    home,
    homePattern,
    infoQasida,
    isbnGhazalianAnswersBook,
    language,
    logo2,
    newFeatureBadge,
    newBadge,
    notepad,
    openBook,
    pageImage,
    pattern,
    qibla,
    ra,
    repost,
    setting,
    splash,
    splashLogo,
    star,
    tasbeeh,
    tasbeehCounterLayout,
    timer,
  ];
}

class Assets {
  const Assets._();

  static const String aEnv = '.env';
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();

  /// List of all assets
  static List<String> get values => [aEnv];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
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
    _svg.ColorMapper? colorMapper,
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
        colorMapper: colorMapper,
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

class LottieGenImage {
  const LottieGenImage(this._assetName, {this.flavors = const {}});

  final String _assetName;
  final Set<String> flavors;

  _lottie.LottieBuilder lottie({
    Animation<double>? controller,
    bool? animate,
    _lottie.FrameRate? frameRate,
    bool? repeat,
    bool? reverse,
    _lottie.LottieDelegates? delegates,
    _lottie.LottieOptions? options,
    void Function(_lottie.LottieComposition)? onLoaded,
    _lottie.LottieImageProviderFactory? imageProviderFactory,
    Key? key,
    AssetBundle? bundle,
    Widget Function(BuildContext, Widget, _lottie.LottieComposition?)?
    frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    String? package,
    bool? addRepaintBoundary,
    FilterQuality? filterQuality,
    void Function(String)? onWarning,
    _lottie.LottieDecoder? decoder,
    _lottie.RenderCache? renderCache,
    bool? backgroundLoading,
  }) {
    return _lottie.Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
      decoder: decoder,
      renderCache: renderCache,
      backgroundLoading: backgroundLoading,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
