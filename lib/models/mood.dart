class Mood {
  
  final String id;
  final String name;
  final String icon;
  final String selectedIcon;

  Mood({
    required this.id,
    required this.name,
    required this.icon,
    required this.selectedIcon,
  });

  String getIcon(bool selected) {

    return selected
        ? selectedIcon
        : icon;

  }

  Map<String, dynamic> toMap(){

    return{
      'id': id,
      'name': name,
      'icon': icon,
      'selectedIcon': selectedIcon,
    };
  }

  factory Mood.fromMap(Map<String, dynamic> map){
    return Mood(
      id: map['id'],
      name: map['name'],
      icon: map['icon'],
      selectedIcon: map['selectedIcon'],
    );
  }

}