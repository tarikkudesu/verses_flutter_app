class AppSettings {
  AppSettings._internal();
  static final AppSettings _instance = AppSettings._internal();
  factory AppSettings() {
    return _instance;
  }
  double fontSize = 24;
  double lineHeight = 28;
  double interWords = 12;
  String font = 'kitab';
  bool hideOptions = false;
  void setFont(String font) => this.font = font;
  void setFontSize(double size) => fontSize = size;
  void setInterWords(double size) => interWords = size;
  void setLineHeight(double size) => lineHeight = size;
}
