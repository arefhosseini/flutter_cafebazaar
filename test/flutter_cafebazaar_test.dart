import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_cafebazaar/flutter_cafebazaar.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_cafebazaar');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterCafebazaar.platformVersion, '42');
  });
}
