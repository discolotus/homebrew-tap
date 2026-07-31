cask "playlist-optimizer" do
  version "0.1.0-preview.2"
  sha256 "0b4d175a6e8f5a852d5403f632b2bffcb689f6b610aa3dea4e982c0f6474041e"

  url "https://github.com/discolotus/spotify-playlist-optimizer/releases/download/v#{version}/Playlist-Optimizer-#{version}-arm64.zip"
  name "Playlist Optimizer"
  desc "Organize local music and export inspectable DJ-ready playlists"
  homepage "https://github.com/discolotus/spotify-playlist-optimizer"

  depends_on arch: :arm64
  depends_on formula: "ffmpeg"
  depends_on macos: :sequoia

  app "Playlist Optimizer.app"

  zap trash: [
    "~/Library/Application Support/com.discolotus.playlist-optimizer",
    "~/Library/Caches/com.discolotus.playlist-optimizer",
    "~/Library/Preferences/com.discolotus.playlist-optimizer.plist",
  ]

  caveats <<~EOS
    This is an unsigned, non-commercial preview. It is ad-hoc signed but has
    not been notarized by Apple. Install it with:

      brew install --cask playlist-optimizer

    Before first launch, review the source and release checksum. macOS will
    require an explicit "Open Anyway" approval in Privacy & Security:
    https://github.com/discolotus/spotify-playlist-optimizer
  EOS
end
