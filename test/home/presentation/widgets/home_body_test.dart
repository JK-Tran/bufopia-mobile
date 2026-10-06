import 'package:bufopia/features/home/home.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/pump_app.dart';

void main() {
  group('HomeBody', () {
    testWidgets('renders all home widgets and menu sections correctly', (
      tester,
    ) async {
      await tester.pumpApp(const HomeBody());
      await tester.pump();

      expect(find.byType(HomeBody), findsOneWidget);
      expect(find.byType(HomeHeader), findsOneWidget);
      expect(find.byType(HomeMenu), findsOneWidget);
      expect(find.text('Quick Battle'), findsOneWidget);
      expect(find.text('Choose Topic'), findsOneWidget);
      expect(find.text('Review Weak Words'), findsOneWidget);
      expect(find.text('2 players'), findsOneWidget);
      expect(find.text('Various topics'), findsOneWidget);
      expect(find.text('Personalized'), findsOneWidget);
    });
  });
}
