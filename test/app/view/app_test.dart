import 'package:bufopia/features/app/view/app.dart';
import 'package:bufopia/features/home/home.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders HomePage', (tester) async {
      await tester.pumpWidget(const App());
      await tester.pump();
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
