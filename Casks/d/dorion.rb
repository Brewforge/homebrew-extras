cask "dorion" do
  arch arm: "aarch64", intel: "x64"

  version "6.5.2"
  sha256 arm:   "b25ab1d03a4e1602994ac50d5e7ebc1bc9acf8c890511fb45da25eea4101ece4",
         intel: "eec00c713e747c3cb02149d8650b416c108cda6173e01a5df45566d62b98099d"

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
