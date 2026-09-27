cask "seeksync" do
  version "0.5.0"
  sha256 "454d84c59c36e57a2de9ada567b570bcbf0a4f6f6575f2af83e0453d52c58aa5"

  url "https://github.com/discolotus/SeekSync/releases/download/v#{version}/SeekSync-#{version}-arm64.zip"
  name "SeekSync"
  desc "Keep Spotify playlists synchronized locally with Sockseek"
  homepage "https://github.com/discolotus/SeekSync"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "SeekSync.app"

  zap trash: [
    "~/Library/Application Support/SeekSync",
    "~/Library/Application Support/SeekSyncPrototype",
    "~/Library/Caches/com.discolotus.SeekSync",
    "~/Library/Preferences/com.discolotus.SeekSync.plist",
  ]

  caveats <<~EOS
    SeekSync is ad-hoc signed and is not Apple-notarized. On first launch,
    macOS may require Open Anyway approval in Privacy & Security.
  EOS
end
