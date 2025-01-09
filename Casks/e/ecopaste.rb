cask "ecopaste" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "b4f7f6eab80c9d54591fffdce20a602ffbb64641f393cf41c4588b2055d158b5",
         intel: "adc0550f8ffbe37215eeab05f2851ce6b0a8e636518df882a720e06620459876"

  mirror = "https://mirror.ghproxy.com/"
  origin = "https://github.com/EcoPasteHub/EcoPaste/releases/latest/download/EcoPaste_#{arch}.app.tar.gz"

  url "#{mirror}#{origin}",
      verified: "mirror.ghproxy.com/"
  name "EcoPaste"
  desc "Open source clipboard management tools"
  homepage "https://github.com/EcoPasteHub/EcoPaste"

  livecheck do
    url origin.to_s
    strategy :github_latest
  end

  auto_updates true

  app "EcoPaste.app"

  zap trash: [
    "/var/folders/pl/88zfv10n4_v7fmnchp0x97980000gn/C/com.ayangweb.EcoPaste",
    "/var/folders/pl/88zfv10n4_v7fmnchp0x97980000gn/T/com.ayangweb.EcoPaste",
    "~/Library/Application Support/com.ayangweb.EcoPaste",
    "~/Library/Caches/com.ayangweb.EcoPaste",
    "~/Library/Logs/com.ayangweb.EcoPaste",
    "~/Library/Preferences/com.ayangweb.EcoPaste.plist",
    "~/Library/WebKit/com.ayangweb.EcoPaste",
  ]
end
