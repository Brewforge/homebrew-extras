cask "dorion" do
  arch arm: "aarch64", intel: "x64"

  version "6.10.0"
  sha256 arm:   "dcb182187d3813350860139124c32ba4d7ed7a6b6be100e77a3c2f498754cabf",
         intel: "92d39757010e53855fb927ce62980982970ec4644589fe4a370e2a304f349709"

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
