.PHONY: help install dev-install format lint typecheck test clean run

# デフォルトターゲット
help:
	@echo "HDL Editor MVP - Makefile Commands"
	@echo "=================================="
	@echo "install       : 本番依存パッケージをインストール"
	@echo "dev-install   : 開発依存パッケージを含めてインストール"
	@echo "format        : コードフォーマット (ruff format)"
	@echo "lint          : リントチェック (ruff check)"
	@echo "typecheck     : 型チェック (pyright)"
	@echo "test          : テスト実行 (pytest)"
	@echo "clean         : キャッシュファイル削除"
	@echo "run           : アプリケーション起動"
	@echo "check         : format + lint + typecheck + test"

# 依存関係インストール
install:
	uv pip install -e .

dev-install:
	uv pip install -e ".[dev]"

# コードフォーマット
format:
	uv run ruff format src/ tests/

# リントチェック
lint:
	uv run ruff check src/ tests/ --fix

# 型チェック
typecheck:
	uv run pyright src/

# テスト実行
test:
	uv run pytest tests/ -xvs

# クリーンアップ
clean:
	find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".pytest_cache" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".ruff_cache" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".pyright" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name "htmlcov" -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name ".coverage" -delete 2>/dev/null || true
	find . -type f -name "*.pyc" -delete 2>/dev/null || true
	find . -type f -name "*.pyo" -delete 2>/dev/null || true

# アプリケーション起動
run:
	uv run python -m hdl_editor

# 全チェック実行
check: format lint typecheck test
	@echo "All checks passed!"