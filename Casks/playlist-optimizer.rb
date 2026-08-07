# frozen_string_literal: true

cask "playlist-optimizer" do
  version "0.2.0-preview.4"
  sha256 "e2fac75b8c79c826ba386b7020aa0a28cc22a48f799cd425f6116f9c2324d331"

  url "https://github.com/discolotus/spotify-playlist-optimizer/releases/download/v#{version}/Flowset-#{version}-arm64.zip"
  name "Flowset"
  desc "Organize local music and export inspectable DJ-ready playlists"
  homepage "https://github.com/discolotus/spotify-playlist-optimizer"

  depends_on arch: :arm64
  depends_on formula: "ffmpeg"
  depends_on macos: :sequoia

  app "Flowset.app"

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
