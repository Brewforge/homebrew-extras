cask "scrcpy-mask" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "defa3ead91d8fea8963dec8565ba87d81041b7d429dde10084ac2476007e2ef2",
         intel: "000ce9e5b7aa50b68e2c1883d10533225fc50ff1fae55f7cc800d1e2e38a7d17"

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
