String? nameValidator(value) {
  if (value.isEmpty) {
    return "* Name is Required";
  } else if (value.length < 3) {
    return "* Name must be at least 3 letters";
  }
  return null;
}

String? phoneValidator(value) {
  if (value.isEmpty) {
    return "* Phone is Required";
  } else if (value.length != 11) {
    return "* Phone number must be 11 digits";
  } else if (!value.startsWith("01")) {
    return "* Phone Number must start with 01";
  }
  return null;
}

String? emailValidator(value) {
  if (value.isEmpty) {
    return "* Email is Required";
  } else if (!value.endsWith("gmail.com")) {
    return "* Email must end with @gmail.com";
  } else if (value.length <= 10) {
    return "* Email must have at least one character before @gmail.com";
  }
  return null;
}

String? passwordValidator(value) {
  if (value.isEmpty) {
    return "* Password is Required";
  } else if (value.length <= 7) {
    return "* Password must have at least 7 characters";
  }
  return null;
}

String? confirmPasswordValidator(value) {
  if (value.isEmpty) {
    return "* Password is Required";
  } else if (value.length <= 7) {
    return "* Password must have at least 7 characters";
  } else if (value.passwordController.text !=
      value.confirmPasswordroller.text) {
    return "* Password must match";
  }
  return null;
}
