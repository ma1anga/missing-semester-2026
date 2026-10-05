import typer


def greet(name: str) -> None:
    print(f"Hello, {name}!")


def cli() -> None:
    typer.run(greet)


if __name__ == "__main__":
    cli()
