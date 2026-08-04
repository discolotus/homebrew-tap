cask "seeksync" do
  version "0.1.3"
  sha256 "12b2b81695e983b2e52dd253784af99aefbc467ba095a848d91831c2da2e6c21"

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
