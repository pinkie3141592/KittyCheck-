abstract class DailyTracker{

  final String id;
  final String name;
  final String icon;

  bool completed;

  DailyTracker({
    required this.id,
    required this.name,
    required this.icon,
    this.completed = false,
  });

  void toggleCompleted(){
    completed = !completed;
  }
}