[![Build Status](https://travis-ci.org/reflex-frp/reflex-dom-semui.svg?branch=master)](https://travis-ci.org/reflex-frp/reflex-dom-semui)

This package provides a Reflex wrapper around the Semantic UI components.  It is very
incomplete and was derived from [code written for
hsnippet](https://github.com/mightybyte/hsnippet/blob/64cc17d2bf2bcce219f3ab8e96b7fd6071d5b56b/frontend/src/SemanticUI.hs).
This is also intended to serve as an example of how to structure FFI packages
that rely on external JS packages.

To build this library locally use reflex-platform's work-on script as follows:

    ~/reflex-platform/work-on ghcjs ./.

This puts you into a nix shell that has GHCJS and the environment it needs.
Then you can build with:

    cabal configure --ghcjs
    cabal build

---

A compiled version of the code in the `example` folder is available in `docs/index.html` or online at https://reflex-frp.github.io/reflex-dom-semui/.

To rebuild the example app and update the `docs` folder, just run

    cabal configure --ghcjs --enable-tests
    cabal build example && ./makedocs.sh

