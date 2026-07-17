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


}