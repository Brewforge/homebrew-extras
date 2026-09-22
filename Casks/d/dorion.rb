cask "dorion" do
  arch arm: "aarch64", intel: "x64"

  version "6.13.2"
  sha256 arm:   "cecada0f44b810b5567cab5588b45abbe68529c8f524742b30faa1eebcadeb65",
         intel: "e30cd5e0b5f17c5b9f9cf1aca1a0610c2db2a1b5270a9ef506f6faf7ae784a45"

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
