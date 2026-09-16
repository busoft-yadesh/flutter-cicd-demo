import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_cicd_demo/main.dart';

void main() {
  testWidgets('App loads successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.textContaining('Environment: dev'), findsOneWidget);
  });
}
