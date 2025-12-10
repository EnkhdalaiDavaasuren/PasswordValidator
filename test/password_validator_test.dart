import 'package:passwordvalid/passwordvalidator.dart';
import 'package:test/test.dart';

void main() {
  test("8 character maximum of password.", () {
    final passwordValidator = Passwordvalidator();
    final result = passwordValidator.CharCheck("1292488112312");
    expect(result, false);
  });

  test("Password contains uppercase or lowercase.", () {
    final passwordValidator = Passwordvalidator();
    final result = passwordValidator.CaseCheck("dasdwdEEDASD");
    expect(result, true);
  });

  test("Password contains digits", () {
    final passwordValidator = Passwordvalidator();
    final result = passwordValidator.DigitCheck("dasdwdEEDASD123");
    expect(result, true);
  });

  test("Password contains symbols", () {
    final passwordValidator = Passwordvalidator();
    final result = passwordValidator.SymbolCheck("dasdwdEEDASD123%^*");
    expect(result, true);
  });

  test("Password mustn't have space.", () {
    final passwordValidator = Passwordvalidator();
    final result = passwordValidator.SpaceCheck("Hello world");
    expect(result, false);
  });

  test("Password Full Checker", () {
    final passwordValidator = Passwordvalidator();
    final result = passwordValidator.validate("Hellr%@1");
    expect(result, true);
  });
}
