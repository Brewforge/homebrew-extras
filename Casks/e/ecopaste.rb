cask "ecopaste" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "0131c7eb2007bef8f6ce9f1a420aba7be6b54bebb5e55618702ad6c66d0082d4",
         intel: "0c8c25417b9fdfb741973c81c982197b112e6824a46e809c4c4592cde4088621"

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
