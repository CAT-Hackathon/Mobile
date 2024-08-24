String? mobileValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your mobile number';
  } else if (!RegExp(r'^[0-10]{11}$').hasMatch(value)) {
    return 'Please enter a valid 11-digit mobile number';
  }
  return null;
}

String? passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your password';
  } else if (value.length < 6) {
    return 'Password must be at least 6 characters long';
  }
  return null;
}

String? confirmPasswordValidator(String? value, String? originalPassword) {
  if (value == null || value.isEmpty) {
    return 'Please confirm your password';
  } else if (value != originalPassword) {
    return 'Passwords do not match';
  }
  return null;
}
