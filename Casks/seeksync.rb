cask "seeksync" do
  version "0.3.2"
  sha256 "f16bbc8bd0015472fd2430dbb17e1e1661fc7c2fa65e5bb971fc82bae65a03a5"

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
