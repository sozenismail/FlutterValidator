class ValidationMixin {

  String validateFirstName(String value) {
    if (value.length < 2) {
      return "İsim en az iki karakter olmalıdır!";
    }
    return null;
  }

  String validateLastName(String value) {
    if (value.length < 2) {
      return "Soyad en az iki karakter olmalıdır!";
    }
    return null;
  }

  String validateEmail(String value) {
    if (!value.contains("@")) {
      return "Mail formatı geçerli değil!";
    }
    return null;
  }


}
