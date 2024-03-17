@echo off
pushd %~dp0
    if not exist .venv (
        py -m venv .venv
    )

    py -m pip install --upgrade pip
    py -m pip install -e .[dev]
    playwright install
    ::pyside6-genpyi all
popd
