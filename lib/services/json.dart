// ? Data
class DataClass {
  final String name;
  final String info;
  final int index;

  DataClass({required this.name, required this.info, required this.index});

  factory DataClass.fromJson(Map<String, dynamic> json) {
    return DataClass(
      name: json['name'],
      index: json['index'],
      info: json['info'],
    );
  }
}

enum ReadType { Surah, Hizb }
