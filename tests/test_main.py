from reflex_project_template.reflex_project_template import index


def test_index_returns_component():
    component = index()
    assert component is not None
    assert hasattr(component, "render") or hasattr(component, "__call__")
