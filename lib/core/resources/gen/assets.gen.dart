/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/apple_icon.png
  AssetGenImage get appleIcon => const AssetGenImage('assets/icons/apple_icon.png');

  /// File path: assets/icons/arrow_down.svg
  SvgGenImage get arrowDown => const SvgGenImage('assets/icons/arrow_down.svg');

  /// File path: assets/icons/arrow_left.svg
  SvgGenImage get arrowLeft => const SvgGenImage('assets/icons/arrow_left.svg');

  /// File path: assets/icons/close.svg
  SvgGenImage get close => const SvgGenImage('assets/icons/close.svg');

  /// File path: assets/icons/cv.png
  AssetGenImage get cv => const AssetGenImage('assets/icons/cv.png');

  /// File path: assets/icons/eye_off.svg
  SvgGenImage get eyeOff => const SvgGenImage('assets/icons/eye_off.svg');

  /// File path: assets/icons/eye_on.svg
  SvgGenImage get eyeOn => const SvgGenImage('assets/icons/eye_on.svg');

  /// File path: assets/icons/facebook_icon.png
  AssetGenImage get facebookIcon => const AssetGenImage('assets/icons/facebook_icon.png');

  /// File path: assets/icons/filter.svg
  SvgGenImage get filter => const SvgGenImage('assets/icons/filter.svg');

  /// File path: assets/icons/google_icon.png
  AssetGenImage get googleIcon => const AssetGenImage('assets/icons/google_icon.png');

  /// File path: assets/icons/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/home.png');

  /// File path: assets/icons/home_active.png
  AssetGenImage get homeActive => const AssetGenImage('assets/icons/home_active.png');

  /// File path: assets/icons/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/icons/profile.png');

  /// File path: assets/icons/search.png
  AssetGenImage get searchPng => const AssetGenImage('assets/icons/search.png');

  /// File path: assets/icons/search.svg
  SvgGenImage get searchSvg => const SvgGenImage('assets/icons/search.svg');

  /// File path: assets/icons/search_active.png
  AssetGenImage get searchActive => const AssetGenImage('assets/icons/search_active.png');

  /// File path: assets/icons/trash.svg
  SvgGenImage get trash => const SvgGenImage('assets/icons/trash.svg');

  /// File path: assets/icons/warning.svg
  SvgGenImage get warning => const SvgGenImage('assets/icons/warning.svg');

  /// List of all assets
  List<dynamic> get values => [
        appleIcon,
        arrowDown,
        arrowLeft,
        close,
        cv,
        eyeOff,
        eyeOn,
        facebookIcon,
        filter,
        googleIcon,
        home,
        homeActive,
        profile,
        searchPng,
        searchSvg,
        searchActive,
        trash,
        warning
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_logo.png
  AssetGenImage get appLogo => const AssetGenImage('assets/images/app_logo.png');

  /// File path: assets/images/code_verification.png
  AssetGenImage get codeVerification => const AssetGenImage('assets/images/code_verification.png');

  /// File path: assets/images/companies.png
  AssetGenImage get companies => const AssetGenImage('assets/images/companies.png');

  /// File path: assets/images/company_example_logo.png
  AssetGenImage get companyExampleLogo => const AssetGenImage('assets/images/company_example_logo.png');

  /// File path: assets/images/congrats.png
  AssetGenImage get congrats => const AssetGenImage('assets/images/congrats.png');

  /// File path: assets/images/image.png
  AssetGenImage get image => const AssetGenImage('assets/images/image.png');

  /// File path: assets/images/mentors.png
  AssetGenImage get mentors => const AssetGenImage('assets/images/mentors.png');

  /// File path: assets/images/no_jobs.png
  AssetGenImage get noJobs => const AssetGenImage('assets/images/no_jobs.png');

  /// File path: assets/images/no_salary.png
  AssetGenImage get noSalary => const AssetGenImage('assets/images/no_salary.png');

  /// File path: assets/images/not_allowed.png
  AssetGenImage get notAllowed => const AssetGenImage('assets/images/not_allowed.png');

  /// File path: assets/images/on_boarding1.png
  AssetGenImage get onBoarding1 => const AssetGenImage('assets/images/on_boarding1.png');

  /// File path: assets/images/on_boarding2.png
  AssetGenImage get onBoarding2 => const AssetGenImage('assets/images/on_boarding2.png');

  /// File path: assets/images/on_boarding3.png
  AssetGenImage get onBoarding3 => const AssetGenImage('assets/images/on_boarding3.png');

  /// File path: assets/images/recive_request.png
  AssetGenImage get reciveRequest => const AssetGenImage('assets/images/recive_request.png');

  /// File path: assets/images/resume.png
  AssetGenImage get resume => const AssetGenImage('assets/images/resume.png');

  /// File path: assets/images/successfull.png
  AssetGenImage get successfull => const AssetGenImage('assets/images/successfull.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        appLogo,
        codeVerification,
        companies,
        companyExampleLogo,
        congrats,
        image,
        mentors,
        noJobs,
        noSalary,
        notAllowed,
        onBoarding1,
        onBoarding2,
        onBoarding3,
        reciveRequest,
        resume,
        successfull
      ];
}

class $AssetsLangGen {
  const $AssetsLangGen();

  /// File path: assets/lang/ar-EG.json
  String get arEG => 'assets/lang/ar-EG.json';

  /// File path: assets/lang/en-US.json
  String get enUS => 'assets/lang/en-US.json';

  /// List of all assets
  List<String> get values => [arEG, enUS];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLangGen lang = $AssetsLangGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  SvgPicture svg({
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
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
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
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
