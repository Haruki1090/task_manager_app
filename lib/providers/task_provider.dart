import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/task.dart';
import '../services/firebase_service.dart';

final firebaseServiceProvider = Provider<FirebaseService>((ref) {
  return FirebaseService();
});

// タスク一覧のストリームを提供するStreamProvider
final tasksStreamProvider = StreamProvider<List<Task>>((ref) {
  final firebaseService = ref.watch(firebaseServiceProvider);
  return firebaseService.getTasksStream();
});
