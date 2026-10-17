# homebrew-imza

Homebrew tap for [Imza](https://imza.run), a terminal coding agent that
keeps you in the loop.

```sh
brew install umutsevdi/imza/imza
```

Apple Silicon only; there is no Intel macOS build.

The cask is updated automatically by the Imza release pipeline on every
published release; this repository is a plain store and holds no workflows.

## Caveat

macOS packages are currently unsigned, so Gatekeeper asks for confirmation
on first launch (right-click the app, choose Open). See the
[installation guide](https://imza.run/docs/01_Installation).
