class EVStation {
  final String id;
  final String name;
  final String status;

  EVStation({
    required this.id,
    required this.name,
    required this.status,
  });

  // JSON 형태에서 객체로 변환하는 팩토리 메소드
  factory EVStation.fromJson(Map<String, dynamic> json) {
    return EVStation(
      id: json['id'] as String,
      name: json['name'] as String,
      status: json['status'] as String,
    );
  }

  // 객체를 JSON 형태로 변환하는 메소드
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'status': status,
    };
  }
}
