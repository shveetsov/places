class Sight {
  late String name; // название достопримечательности
  late double lat; // координаты места широта
  late double lon; // координаты места долгота
  late String url; // путь до фотографии в интернете
  late String details; // описание достопримечательности
  late String type; // тип достопримечательности

  Sight({
    required this.name,
    required this.lat,
    required this.lon,
    required this.url,
    required this.details,
    required this.type,
  });
}
