class CutsomException implements Exception{
  final String  message;
  CutsomException(this.message);
  @override
  String toString() {
  return message;
}
}