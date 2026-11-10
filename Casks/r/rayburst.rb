cask "rayburst" do
  version "4.1.2"
  sha256 "ed54a1d1bf0d4b0819aa24c7ee4c662f5e1e1e4555ef48f8e6299a3ea8cc6d1c"

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
