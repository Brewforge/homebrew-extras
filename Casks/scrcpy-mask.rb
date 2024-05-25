cask "scrcpy-mask" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "241f2474492e5a7cba947d262479343f49cf6b058fbaf780d84f7e528c74d537",
         intel: "266954b137fc47faebd41916be0c6d70692e334c0a27fd17127f736db0a2fd9b"

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
