class Ingredient {
  final String? quantity;
  final String? measurement;
  final bool quanityMeasurementIsSeparated;
  final String name;

  Ingredient(
      {this.quantity,
      this.measurement,
      this.quanityMeasurementIsSeparated = false,
      required this.name});

  @override
  String toString() {
    final stringBuffer = StringBuffer();
    if (quantity != null) stringBuffer.write(quantity);
    if (quanityMeasurementIsSeparated) {
      stringBuffer.write(' ');
    }

    if (measurement != null) {
      stringBuffer.write(measurement);
    }
    if (quantity != null || measurement != null) {
      stringBuffer.write(' ');
    }
    stringBuffer.write(name);
    return stringBuffer.toString();
  }
}
