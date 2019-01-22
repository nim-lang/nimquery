# Package

version       = "1.1.2"
author        = "Oscar Nihlgård"
description   = "Library for querying HTML using CSS-selectors (like JavaScripts document.querySelector)"
license       = "MIT"

skipFiles = @["tests.nim"]

requires "nim >= 0.18.0"

task test, "Run the tests":
    exec "nim c -r tests/tests"
    rmFile "tests/tests"
    exec "nim c -r tests/incltests"
    rmFile "tests/incltests"
