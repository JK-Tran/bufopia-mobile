import 'package:bufopia/shared/utils/user_name_generator.dart';
import 'package:bufopia/shared/utils/validation_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserNameGenerator & ValidationUtils', () {
    test('generates valid mascot name with 5 uppercase chars from uid', () {
      const uid = '3nMj9L4sdgf7o55R932LwN1oFow2';
      final bunnyName = UserNameGenerator.generate(
        UserNameGenerator.bunny,
        uid,
      );
      final pipName = UserNameGenerator.generate(UserNameGenerator.pip, uid);

      expect(bunnyName, 'Bunny_OFOW2');
      expect(pipName, 'Pip_OFOW2');

      // Phải vượt qua bộ kiểm tra hợp lệ của app và backend
      expect(ValidationUtils.isValidPlayerName(bunnyName), isTrue);
      expect(ValidationUtils.isValidPlayerName(pipName), isTrue);
    });

    test('handles empty or short uid gracefully', () {
      final nameEmpty = UserNameGenerator.generate(UserNameGenerator.bunny, '');
      final nameShort = UserNameGenerator.generate(
        UserNameGenerator.pip,
        'abc',
      );

      expect(nameEmpty, 'Bunny_00001');
      expect(nameShort, 'Pip_ABC');

      expect(ValidationUtils.isValidPlayerName(nameEmpty), isTrue);
      expect(ValidationUtils.isValidPlayerName(nameShort), isTrue);
    });

    test(
      'rejects disallowed characters like # or default placeholder names',
      () {
        expect(ValidationUtils.isValidPlayerName('Pip #OFOW2'), isFalse);
        expect(ValidationUtils.isValidPlayerName('Bunny #12345'), isFalse);
        expect(ValidationUtils.isValidPlayerName('Alex'), isFalse);
        expect(ValidationUtils.isValidPlayerName('Player 1'), isFalse);
        expect(ValidationUtils.isValidPlayerName('Guest'), isFalse);
      },
    );
  });
}
