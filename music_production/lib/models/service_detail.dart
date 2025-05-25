class ServiceDetail {
  final String backgroundImage;
  final String iconPath;
  final String subTitle;
  final String title;

  ServiceDetail({
    required this.backgroundImage,
    required this.iconPath,
    required this.subTitle,
    required this.title,
  });

  factory ServiceDetail.fromMap(Map<String, dynamic> map) {
    return ServiceDetail(
      backgroundImage: map['backgroudImage'] ?? '',
      iconPath: map['iconPath'] ?? '',
      subTitle: map['subTitle'] ?? '',
      title: map['title'] ?? '',
    );
  }
}
