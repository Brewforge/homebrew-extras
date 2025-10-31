cask "dorion" do
  arch arm: "aarch64", intel: "x64"

  version "6.11.0"
  sha256 arm:   "a35c946916d71a58f9c62139c324f58fad54f3e74b4f652495135fa2fa0f878e",
         intel: "f9d0297e91acd87c3bb9f552ab49c1fcb1d40c392795c4b48d61e116a8b0482d"

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
