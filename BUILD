genrule(
    name = "hello",
    outs = ["hello.txt"],
    cmd = """
        echo 'hi' > "$(location hello.txt)"
    """,
)
