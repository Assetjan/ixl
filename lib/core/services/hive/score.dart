import 'package:hive/hive.dart';

part 'score.g.dart';

@HiveType(typeId: 1)
class Score extends HiveObject {
  @HiveField(0)
  final String username;

  @HiveField(1)
  final int score;

  Score({required this.username, required this.score});
}
