cask "dorion" do
  arch arm: "aarch64", intel: "x64"

  version "6.13.1"
  sha256 arm:   "3e9733001288e84ae945285bdf768630c35d3e06fc2ec4935a61e3b9cf8762cd",
         intel: "ae202ef62ba2dc2512c86743201d79c7444b43972b2e2851ae8f2c338b32cdb9"

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
