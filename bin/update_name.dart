import 'dart:io';
import 'dart:core';
import 'package:yaml/yaml.dart';
import './contants.dart';


void main(List<String> arguments) async {
  try {
    print("✅开始读取配置...");
    var yamlString = File('config.yaml').readAsStringSync();
    var yaml = loadYaml(yamlString);
    final androidAppName = yaml['android']?['app_name'];
    final iosAppName = yaml['ios']?['app_name'];
    final macosAppName = yaml['macos']?['app_name'];
    final windowsAppName = yaml['windows']?['app_name'];
    final linuxAppName = yaml['linux']?['app_name'];
    final webAppName = yaml['web']?['app_name'];
    if (androidAppName != null) {
      final file = File(AndroidManifestFile);
      String content = await file.readAsString();
      RegExp labelPattern = RegExp('android:label=".*?"');
      String replacedString = content.replaceAll(
        labelPattern,
        'android:label="$androidAppName"',
      );
      await file.writeAsString(replacedString);
      print("✅ Android应用名称配置成功.");
    }

    if (iosAppName != null) {
      final iosFile = File(iOSInfoPlistFile);
      String iosContent = await iosFile.readAsString();
      String displayNameRegExpStr =
          r'(<key>CFBundleDisplayName<\/key>\s*<string>)(.*?)(<\/string>)';
      String bundleNameRegExpStr =
          r'(<key>CFBundleName<\/key>\s*<string>)(.*?)(<\/string>)';
      RegExp displayNameRegExp = RegExp(displayNameRegExpStr);
      RegExp bundleNameRegExp = RegExp(bundleNameRegExpStr);
      String newContent = iosContent
          .replaceAll(displayNameRegExp,
              '<key>CFBundleDisplayName</key>\n<string>$iosAppName</string>')
          .replaceAll(bundleNameRegExp,
              '<key>CFBundleName</key>\n<string>$iosAppName</string>');
      await iosFile.writeAsString(newContent);
      print("✅ IOS应用名称配置成功.");
    }

    if (macosAppName != null) {}

    if (windowsAppName != null) {}

    if (linuxAppName != null) {}

    if (webAppName != null) {}
  } catch (e) {
    print("❌ 配置出错: $e");
  }
}
