@echo off
pushd %~dp0\..
    if not exist .venv (
        echo .venv do not exists. Creating .venv
        py -m venv .venv
    )else (
        echo .venv already exists. Skipping creation.
    )

    call .venv\Scripts\activate.bat

    py -m pip install --upgrade pip
    py -m pip install -e .[dev]
popd
