# Getting Started

1. 今回fvmでバージョン管理をし、3.19.1に設定しているので、適用させる
```terminal
fvm use 3.19.1
```

2. 依存関係の取得
```terminal
fvm flutter pub get
```

### done🎉

<br>
<br>
<br>

# フォルダ構成の説明
[レイヤードアーキテクチャ](https://zenn.dev/flutteruniv/books/flutter-architecture/viewer/5_layered-architecture)と[MVVMアーキテクチャ](https://zenn.dev/flutteruniv/books/flutter-architecture/viewer/3_mvvm)を融合させたようなフォルダ構成です。

レイヤードアーキテクチャなら通常Applicationフォルダがありますが、そこを消し、presentationの画面ごとに一つViewModelを作成するように変えています。

なぜ変えたかというと、単純にViewひとファイルに対して一つのViewModelがあると処理フローがイメージしやすいと思ったからです。

オフラインでめちゃくちゃ詳しく説明するので心配しないでください
```
lib
├── domain
│   │
│   │ // infrastructureとpresentationから依存される。逆にどの層にも依存してはいけない
│   │ // Modelやインターフェースを定義する。
│   │ // ここでスーパークラスを定義することで、presentationはmock・remoteどちらのrepositoryも利用可能に
│   │
│   ├── user
│   │   ├── user_entiry.dart
│   │   └── user_repository.dart
│   │
│   └── post
│       ├── post_entity.dart
│       └── post_repository.dart
│
├── infrastructure
│   │
│   │ // APIと通信を行うremoteフォルダとダミーデータを置くmocksフォルダがある
│   │ // APIの開発が終わっていなくてもUIの実装(Flutterのタスク)に専念できるような設計
│   │
│   ├── mocks
│   │   ├── mock_post_repository.dart
│   │   └── mock_user_repository.dart
│   │
│   └── remote
│       ├── post_repository.dart
│       └── user_repository.dart
│
├── presentation
│   │
│   │　// UI(各画面や共通Widget)を記述したファイルとrepositoryとViewのブリッジになるViewModelを配置する
│   │
│   ├── components
│   │   │
│   │   │ // グローバルコンポーネントを配置
│   │   │
│   │   └── loading.dart
│   │
│   ├── home
│   │   │
│   │   │ // 画面ごとにフォルダ分けをし、ViewとViewModelを作成する。
│   │   │ // この画面でしか使わない共通化したWidgetもおいて良い
│   │   │
│   │   ├── home_screen.dart
│   │   └── view_model
│   │       └── home_view_model.dart
│   └── post
│       ├── posts_screen.dart
│       └── vew_model
│           └── post_view_model.dart
├── utils
│   ├── constants
│   │   │
│   │   │ // 定数をまとめる(なぜ: 今後大規模なUI修正がしやすかったり、違った色の使用ミスを抑制する)
│   │   │
│   │   └── app_color.dart
│   │
│   ├── extensions
│   │   │
│   │   │ // Extension修飾子を使用して既存のFlutterクラスに機能追加する
│   │   │
│   │   └── context.dart
│   │
│   ├── gen
│   │   │
│   │   │ // 画像ファイルを扱いやすい形式に変えたファイルを配置する(基本触らない)
│   │   │
│   │   └── assets.gen.dart
│   │
│   ├── hooks
│   │   │
│   │   │ // 自作のhooksを置くフォルダ
│   │   │
│   │   └── use_toggle.dart
│   │
│   ├── routes
│   │   │
│   │   │ // 画面遷移を制御するコードを置くフォルダ
│   │   │
│   │   └── routes.dart
│   │
│   └── state
│       │
│       │ // グローバルなステートを置くフォルダ
│       │
│       └── overlay_loading.dart
│
└── main.dart
```


# PR

基本的にテンプレートに則って書き進める(テンプレートは自動生成されるから、PRを作成するのみで良い)

[Labels](https://github.com/KDG-Develop-Hub/social-mobile/labels)全体をよく確認する
- タスクを開始したらPRをすぐに作成する
- 作業中の場合は、Draftに設定する・レビューされても良い状態になったらOpenに変更する
- Reviewers(コードの確認者)は基本的に@Haru-Kobayashi073を指定する。
- Assignees(タスクの担当者)は自分を指定する
- Labelsで該当するものを指定する