# Disco Lotus Homebrew Tap

Homebrew packages for Disco Lotus apps.

## Playlist Optimizer

Playlist Optimizer is currently an unsigned, non-commercial macOS preview for
Apple silicon.

```sh
brew tap discolotus/tap
brew install --cask playlist-optimizer
```

Before first launch, review the
[source and release checksum](https://github.com/discolotus/spotify-playlist-optimizer/releases).
Because the preview is not notarized by Apple, macOS requires explicit approval
under **System Settings → Privacy & Security → Open Anyway**.

## Automatic cask updates

The tap checks the GitHub Releases listed in `release-sources.json` every hour.
When a source publishes a newer cask asset, the imported reusable workflow
validates its token, repository URL, and literal SHA-256 before committing it.
This keeps cross-repository credentials out of application repositories.
