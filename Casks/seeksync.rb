cask "seeksync" do
  version "0.2.1"
  sha256 "a6223a07d578e5445b995e199472c1b37b81def6dc36010303a3b583eaa92597"

  url "https://github.com/discolotus/SeekSync/releases/download/v#{version}/SeekSync-#{version}-arm64.zip"
  name "SeekSync"
  desc "Keep Spotify playlists synchronized locally with Sockseek"
  homepage "https://github.com/discolotus/SeekSync"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "SeekSync.app"

  zap trash: [
    "~/Library/Application Support/SeekSyncPrototype",
    "~/Library/Caches/com.discolotus.SeekSync",
    "~/Library/Preferences/com.discolotus.SeekSync.plist",
  ]

  caveats <<~EOS
    SeekSync is ad-hoc signed and is not Apple-notarized. On first launch,
    macOS may require Open Anyway approval in Privacy & Security.
  EOS
end
