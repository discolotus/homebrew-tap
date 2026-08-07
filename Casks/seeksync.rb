cask "seeksync" do
  version "0.3.3"
  sha256 "59553d083dff3dc30caa299f3242b866e915d210b2ebb5fcc2f9af12b78c72a9"

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
