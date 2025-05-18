cask "dorion" do
  arch arm: "aarch64", intel: "x64"

  version "6.6.1"
  sha256 arm:   "1fcb09fab0a106fd6fdb2f17345838e7e5f3105c21163babc7a7b1d070072566",
         intel: "4a3d329594a85987d8594801dfa4118503cce4ecf27395e98533d684a2982646"

  url "https://github.com/SpikeHD/Dorion/releases/download/v#{version}/Dorion_#{version}_#{arch}.dmg"
  name "Dorion"
  desc "Alternative Discord client aimed towards lower-spec devices"
  homepage "https://github.com/SpikeHD/Dorion"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Dorion.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.spikehd.dorion",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/com.spikehd.dorion",
    "~/Library/Application Support/com.spikehd.dorion",
    "~/Library/Application Support/dorion",
    "~/Library/Caches/com.spikehd.dorion",
    "~/Library/HTTPStorages/com.spikehd.dorion.binarycookies",
    "~/Library/Preferences/com.dorion.plist",
    "~/Library/Saved Application State/com.dorion.savedState",
    "~/Library/WebKit/com.spikehd.dorion",
  ]
end
