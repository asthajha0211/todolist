import 'package:hive/hive.dart';

part 'listinfo.g.dart';

@HiveType(typeId: 0)
class ListInfo extends HiveObject{

  @HiveField(1)
  late String taskshort;

  @HiveField(2)
  late String taskslong;
}
