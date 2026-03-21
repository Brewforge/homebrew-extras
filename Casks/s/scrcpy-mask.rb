cask "scrcpy-mask" do
  version "0.7.3"
  sha256 "9cf9d0510724fa229502895c0d189a1012756df13097a201c2e6d1d54c5dc31e"

  url "https://github.com/AkiChase/scrcpy-mask/releases/download/v#{version}/scrcpy-mask-macos-arm64.dmg"
  name "scrcpy-mask"
  desc "Scrcpy client aimed at providing mouse and key mapping to control Android device"
  homepage "https://github.com/AkiChase/scrcpy-mask"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "scrcpy-mask.app"

  zap trash: [
    "~/Library/Application Support/com.akichase.mask",
    "~/Library/Caches/com.akichase.mask",
    "~/Library/Saved Application State/com.akichase.mask.savedState",
    "~/Library/WebKit/com.akichase.mask",
  ]
end
