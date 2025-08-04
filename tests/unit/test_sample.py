"""サンプルテスト - プロジェクト初期化確認用"""


def test_project_initialization() -> None:
    """プロジェクト初期化テスト"""
    assert True, "Project initialization test passed"


def test_import_hdl_editor() -> None:
    """hdl_editorパッケージのインポートテスト"""
    import hdl_editor
    
    assert hdl_editor is not None