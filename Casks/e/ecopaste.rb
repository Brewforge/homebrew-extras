cask "ecopaste" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "323dfa9bfb088e44ff5f9cd2e0d7f6e402f2eb9010a017faa22bd1653837cfed",
         intel: "adc0550f8ffbe37215eeab05f2851ce6b0a8e636518df882a720e06620459876"

  url "https://github.com/EcoPasteHub/EcoPaste/releases/download/v#{version}/EcoPaste_#{version}_#{arch}.dmg"
  name "EcoPaste"
  desc "Open source clipboard management tools"
  homepage "https://github.com/EcoPasteHub/EcoPaste"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "EcoPaste.app"

  zap trash: [
    "~/Library/Application Support/com.ayangweb.EcoPaste",
    "~/Library/Caches/com.ayangweb.EcoPaste",
    "~/Library/Logs/com.ayangweb.EcoPaste",
    "~/Library/Preferences/com.ayangweb.EcoPaste.plist",
    "~/Library/WebKit/com.ayangweb.EcoPaste",
  ]
end
