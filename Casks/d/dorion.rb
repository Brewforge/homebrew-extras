cask "dorion" do
  arch arm: "aarch64", intel: "x64"

  version "6.13.0"
  sha256 arm:   "f0f97e75cbef19e711bb60ea5defc3e6565a1b65f503803e5fc9d5d8f9df6fa1",
         intel: "0663568951e43acdadb1772139dad53900dee1b9dbc5c20c43a9a7b6b4948df1"

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
