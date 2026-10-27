cask "dorion" do
  arch arm: "aarch64", intel: "x64"

  version "7.0.0"
  sha256 arm:   "c0777ea8b1aa24d05a5b66dcac5072bde0f5892ca9d8b8e2230465948ab7677b",
         intel: "ab8e7e065bb0b28e98ca9adb0d020564d2ec42a244135a63db84b02354c04486"

  url "https://github.com/SpikeHD/Dorion/releases/download/v#{version}/Dorion_#{version}_#{arch}.dmg"
  name "Dorion"
  desc "Alternative Discord client aimed towards lower-spec devices"
  homepage "https://github.com/SpikeHD/Dorion"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Dorion.app"

  zap trash: [
    "~/Library/Application Support/com.spikehd.dorion",
    "~/Library/Application Support/dorion",
    "~/Library/Caches/com.spikehd.dorion",
    "~/Library/HTTPStorages/com.spikehd.dorion.binarycookies",
    "~/Library/Preferences/com.dorion.plist",
    "~/Library/Saved Application State/com.dorion.savedState",
    "~/Library/WebKit/com.spikehd.dorion",
  ]
end
