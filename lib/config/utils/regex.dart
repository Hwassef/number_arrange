class AppRegExp {
  AppRegExp._();
  /* Employee ID must respect this format */
  /// First charachter must be an alphabetic character either uppercase or lowercase
  /// Starting from second spot must be numeric this preceding pattern of [0-9] must exist exactly 8 times ({8})
  /// Last charachter must be an alphabetic character either uppercase or lowercase
  static const String isValidEmployeeID = r"^[a-zA-Z][0-9]{8}[a-zA-Z]$";
}
