cask "dorion" do
  arch arm: "aarch64", intel: "x64"

  version "6.9.1"
  sha256 arm:   "b39ca655c1dd23f5893e2f8bad98608a2b2084738af84297599053902c8a2428",
         intel: "6b95935b2fc141c9a91acb5dee3b38761c4c0816e7bd01a680d9d76093cc630a"

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
