cask "scrcpy-mask" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "b1d60588b5d088567d263eb2120e5da331b736c0dd01931ef75735d5a986fdfb",
         intel: "7d2ad7b5833168730ef9a97d69033dde8176e45fdf4784ba868e329c61001175"

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
