class DailyTracker{

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

  Map<String, dynamic> toMap(){

    return {
      'id':id,
      'name':name,
      'icon':icon,
      'completed':completed,
    };
  }

  factory DailyTracker.fromMap(Map<String, dynamic> map){
    return DailyTracker(
      id:map['id'],
      name: map['name'],
      icon: map['icon'],
      completed: map['completed'],
    );
  }



}