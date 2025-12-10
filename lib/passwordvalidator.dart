class Passwordvalidator {
  bool CharCheck(String value) {
    int charactersNumber = value.length;
    if (charactersNumber == 0) {
      return false;
    }

    if (charactersNumber > 8) {
      return false;
    }

    return true;
  }

  bool CaseCheck(String value) {
    if (value.isEmpty) return false;
    final hasUpper = RegExp('[A-Z]').hasMatch(value);
    final hasLower = RegExp('[a-z]').hasMatch(value);
    if (!hasUpper && !hasLower) {
      return false;
    }
    return true;
  }

  bool DigitCheck(String value) {
    if (value.isEmpty) return false;
    final hasDigits = RegExp(r'\d').hasMatch(value);
    if (!hasDigits) return false;

    return true;
  }

  bool SymbolCheck(String value) {
    if (value.isEmpty) return false;
    final hasSymbols = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value);
    if (!hasSymbols) return false;
    return true;
  }

  bool SpaceCheck(String value) {
    if (value.isEmpty) return false;
    if (value.contains(" ")) return false;
    return true;
  }

  bool validate(String value) {
    return CharCheck(value) && CaseCheck(value) && 
    DigitCheck(value) && SymbolCheck(value) && SpaceCheck(value);
  }
}