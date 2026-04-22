cask "motrix-next" do
  version "3.8.0"
  sha256 "9ef8279bc6be80268ecfed50aa9cfe52e8d15c849d633b7c3530008fc68a1846"

  url "https://github.com/AnInsomniacy/motrix-next/releases/download/v#{version}/MotrixNext_#{version}_aarch64.dmg"
  name "Motrix Next"
  desc "Aria2-powered download manager rebuilt with Tauri"
  homepage "https://github.com/AnInsomniacy/motrix-next"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "MotrixNext.app"

  zap trash: [
    "~/Library/Application Support/com.motrix.next",
    "~/Library/Caches/com.motrix.next",
    "~/Library/HTTPStorages/com.motrix.next",
    "~/Library/Preferences/com.motrix.next.plist",
    "~/Library/Saved Application State/com.motrix.next.savedState",
  ]

  caveats do
    <<~EOS
      Motrix Next is not code-signed. If macOS reports that it is damaged, either:
        brew install --cask --no-quarantine aninsomniacy/motrix-next/motrix-next
      or run:
        xattr -cr /Applications/MotrixNext.app
    EOS
  end
end
