import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/task.dart';

class FirebaseService {
  final CollectionReference tasksCollection =
      FirebaseFirestore.instance.collection('tasks');

  // タスクのストリーム取得
  Stream<List<Task>> getTasksStream() {
    return tasksCollection.snapshots().map((snapshot) => snapshot.docs
        .map((doc) => Task.fromJson(doc.data() as Map<String, dynamic>, doc.id))
        .toList());
  }

  // タスクの追加
  Future<void> addTask(Task task) async {
    await tasksCollection.add(task.toJson());
  }

  // タスクの更新（完了操作など）
  Future<void> updateTask(Task task) async {
    await tasksCollection.doc(task.id).update(task.toJson());
  }
}
