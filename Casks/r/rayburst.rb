cask "rayburst" do
  version "4.0.1"
  sha256 "f4d1c40d7794dc7f42323001b472b2a722b168ace57e21074b9e780da883b3f2"

  url "https://github.com/AnInsomniacy/rayburst/releases/download/v#{version}/Rayburst_#{version}_aarch64.dmg"
  name "Motrix Next"
  desc "Aria2-powered download manager rebuilt with Tauri"
  homepage "https://github.com/AnInsomniacy/rayburst"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Rayburst.app"

  zap trash: [
    "~/Library/Application Support/com.motrix.next",
    "~/Library/Caches/com.motrix.next",
    "~/Library/HTTPStorages/com.motrix.next",
    "~/Library/Preferences/com.motrix.next.plist",
    "~/Library/Saved Application State/com.motrix.next.savedState",
  ]
end
