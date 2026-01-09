class Currency {
  const Currency({
    required this.symbol,
    required this.name,
    required this.value,
    required this.hexColor,
    required this.hexAccentColor,
  });

  final String symbol;
  final String name;
  final String value;
  final int hexColor;
  final int hexAccentColor;
}
