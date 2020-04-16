class ValidationMixin {
  String validateNumber(String value) {
    if (int.tryParse(value) != null) {
      if (int.tryParse(value) >= 1900) {
        return null;
      }
    }
    return 'Va rog introduceti un salariu valid';
  }
}
