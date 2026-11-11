import 'package:flutter_application_2/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_2/models/kuliner_model.dart';

void main() {
  testWidgets('opens the login page first', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('Log in'), findsOneWidget);
    expect(find.text('Instagram'), findsOneWidget);
  });

  test('parses categories returned by TheMealDB', () {
    final model = kulinerModelFromJson('''
      {
        "categories": [
          {
            "idCategory": "1",
            "strCategory": "Beef",
            "strCategoryThumb": "https://example.com/beef.png",
            "strCategoryDescription": "Beef dishes"
          }
        ]
      }
    ''');

    expect(model.categories, hasLength(1));
    expect(model.categories.first.idCategory, '1');
    expect(model.categories.first.strCategory, 'Beef');
  });

  test('rejects an invalid categories response', () {
    expect(
      () => KulinerModel.fromJson({}),
      throwsA(isA<FormatException>()),
    );
  });
}
