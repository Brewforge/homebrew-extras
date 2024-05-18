cask "scrcpy-mask" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "1d6a7dd1317da597dbc075948d4ed239ff64e7f1b8b78e01dd132a007c120cb0",
         intel: "bbdc6068508c652706ccfcb7765b0c5716546887b2162c7fa85c0415b9752284"

  url "https://github.com/AkiChase/scrcpy-mask/releases/download/v#{version}/scrcpy-mask_#{version}_#{arch}.dmg"
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
