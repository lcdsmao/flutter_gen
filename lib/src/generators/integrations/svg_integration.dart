import 'package:flutter_gen/src/generators/integrations/integration.dart';

class SvgIntegration extends Integration {
  @override
  List<String> get requiredImports => [
        'package:flutter_svg/flutter_svg.dart',
        'package:flutter/services.dart',
      ];

  @override
  String get classOutput => '''class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    bool matchTextDirection = false,
    AssetBundle bundle,
    String package,
    double width,
    double height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder placeholderBuilder,
    Color color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    return SvgPicture.asset(
      _assetName,
      matchTextDirection: matchTextDirection,
    );
  }

  String get path => _assetName;
}''';

  @override
  String get className => 'SvgGenImage';

  @override
  String classInstantiate(String path) => 'SvgGenImage\(\'$path\'\)';

  @override
  String get mime => 'image/svg+xml';

  @override
  bool get isConstConstructor => true;
}
