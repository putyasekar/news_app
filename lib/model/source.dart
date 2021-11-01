class Source {
  Source({
    this.id,
    this.name,
  });

  // mark data as nullable because it was null
  String? id;
  String? name;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"],
      );
}
