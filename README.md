# HDL Editor MVP

VSCodeライクなHDLエディタのMVP版実装

## 概要

HDL Editor MVPは、ブロック配置と配線によるビジュアルプログラミングでHDL設計を行うエディタです。
VSCodeライクなUIを採用し、直感的な操作でVerilogコードを生成できます。

## 主な機能

- 🎨 VSCodeライクなUI
- 📦 12種類の基本ブロック
- 🔌 Manhattan配線（A*アルゴリズム）
- ⚡ リアルタイムエラーチェック
- 📝 Verilogコード生成
- 💾 プロジェクト保存/読込（MessagePack + AES暗号化）

## 開発状況

- **開発期間**: 2025/1/6 〜 2025/4/13（14週間）
- **現在のフェーズ**: Phase 1 - 基盤開発
- **進捗管理**: [Linear](https://linear.app/oolong-tea/project/hdl-editor-mvp版-46cb99b94160)

## 必要環境

- Python 3.12以上
- PySide6 6.6.0以上

## インストール

```bash
# リポジトリのクローン
git clone https://github.com/oolong999A/HDL_EDITOR_MVP.git
cd HDL_EDITOR_MVP

# uvによる依存関係インストール
uv venv
source .venv/bin/activate  # Windows: .venv\Scripts\activate
uv pip install -e ".[dev]"
```

## 開発

```bash
# コードフォーマット
make format

# リントチェック
make lint

# 型チェック
make typecheck

# テスト実行
make test

# 全チェック実行
make check

# アプリケーション起動
make run
```

## プロジェクト構造

```
HDL_EDITOR_MVP/
├── src/
│   └── hdl_editor/
│       ├── core/       # ビジネスロジック
│       ├── ui/         # GUI実装
│       └── utils/      # ユーティリティ
├── tests/
│   ├── unit/          # 単体テスト
│   ├── integration/   # 統合テスト
│   └── fixtures/      # テストデータ
├── docs/              # ドキュメント
├── pyproject.toml     # プロジェクト設定
├── Makefile          # ビルドコマンド
└── README.md         # このファイル
```

## ライセンス

MIT License

## コントリビューション

Issue や Pull Request は歓迎します。
開発に参加する場合は、[CONTRIBUTING.md](docs/CONTRIBUTING.md) を参照してください。

## リンク

- [GitHub Repository](https://github.com/oolong999A/HDL_EDITOR_MVP)
- [Linear Project](https://linear.app/oolong-tea/project/hdl-editor-mvp版-46cb99b94160)
- [Notion Documentation](https://www.notion.so/245f50c4e86781f3a252f4dcf1705558)