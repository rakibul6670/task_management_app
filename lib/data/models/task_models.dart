class TaskModels {
  final String id;
  final String title;
  final String description;
  final String date;
  final String time;

  //==============================Task Models Constructor ============
  TaskModels({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.time
  });


  //========================Factory Constructor ================================
  factory TaskModels.fromJson(task){
    return TaskModels(
        title: task["title"],
        description: task["description"],
        date: task["date"],
        time:task["time"],
        id: task["id"],
    );
  }


  //===============================To JSON convert ============

  // List<Map<String ,dynamic>> toJson (){
  //   return TaskModels(title: title, description: description, date: date, time: time);
  // }


}