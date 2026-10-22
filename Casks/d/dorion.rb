cask "dorion" do
  arch arm: "aarch64", intel: "x64"

  version "6.14.0"
  sha256 arm:   "8a0dd480476047bd5c45fa027c173265a39bf3b92203976d23027e399733d905",
         intel: "f81c3bec9c33c80cff5b2fc9e9962bf81e1335c9678e28e7f2128dbfacfb201f"

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
