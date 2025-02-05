# task_manager_app
タスク管理アプリのウィジェット開発テスト用リポジトリ

## ディレクトリ構造
```bash
task_manager_app/
├── android/
├── ios/
│   ├── Runner.xcworkspace    // Xcodeで開くファイル
│   └── ※ウィジェット拡張用のターゲットは後述
├── lib/
│   ├── main.dart              // エントリーポイント（Firebase初期化、Riverpodセットアップ）
│   ├── models/
│   │   └── task.dart          // タスクモデル（タスク名、完了状態）
│   ├── providers/
│   │   └── task_provider.dart // Riverpodプロバイダー（Firestoreからのデータ取得、更新）
│   ├── screens/
│   │   └── task_list_screen.dart  // タスク一覧・追加画面（UI）
│   └── services/
│       └── firebase_service.dart  // Firebase初期化＆Firestoreアクセス処理
├── pubspec.yaml               // 依存関係設定
└── test/

```

# task_manager_app
