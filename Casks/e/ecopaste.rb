cask "ecopaste" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "8230202b9758affd13e46a9e526155b906b17adf8b38c3b8dec99d1b252b41fc",
         intel: "8d7df414488d4bb43f1ebe54cb553a702a008e81c805b13d2f7490503ba739f6"

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
