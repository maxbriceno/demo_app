void main() {
  String? mayBeNullString;
  String notNullString = "Hello World";

  mayBeNullString ??= "Default String Value";
  print(notNullString.toUpperCase());
  
}
