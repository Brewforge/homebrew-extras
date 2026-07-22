cask "ecopaste" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "cfdeaaeb92c59903db801c0d12901424c8e4f14d6e2bba40a1f83384c3224c1b",
         intel: "a431d5cc02e63f6172a8da1606ffef16dfb75a30c2e0ba3d928061154742ac0d"

  url "https://github.com/EcoPasteHub/EcoPaste/releases/download/v#{version}/EcoPaste_#{version}_#{arch}.dmg"
  name "EcoPaste"
  desc "Open source clipboard management tools"
  homepage "https://github.com/EcoPasteHub/EcoPaste"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "EcoPaste.app"

  zap trash: [
    "~/Library/Application Support/com.ayangweb.EcoPaste",
    "~/Library/Caches/com.ayangweb.EcoPaste",
    "~/Library/Logs/com.ayangweb.EcoPaste",
    "~/Library/Preferences/com.ayangweb.EcoPaste.plist",
    "~/Library/WebKit/com.ayangweb.EcoPaste",
  ]
end
