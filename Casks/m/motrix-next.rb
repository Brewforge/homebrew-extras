cask "motrix-next" do
  version "3.6.1"
  sha256 "d57fc6b34c4c8da97de6d36befd972e70709067b1b407dd674b412eb8c6200eb"

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
