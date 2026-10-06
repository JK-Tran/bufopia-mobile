import 'package:bufopia/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/pump_app.dart';

void main() {
  group('HomeBody', () {
    testWidgets('renders all home widgets and menu sections correctly', (
      tester,
    ) async {
      tester.view.physicalSize = const Size(1920, 1080);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      await tester.pumpApp(const HomeBody());
      await tester.pump();

      expect(find.byType(HomeBody), findsOneWidget);
      expect(find.byType(HomeHeader), findsOneWidget);
      expect(find.byType(HomeMenu), findsOneWidget);
      expect(find.text('Nối từ'), findsOneWidget);
      expect(find.text('Trắc nghiệm từ vựng'), findsOneWidget);
      expect(find.text('Góc luyện tập'), findsOneWidget);
    });
  });
}
