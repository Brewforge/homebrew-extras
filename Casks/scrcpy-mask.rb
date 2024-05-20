cask "scrcpy-mask" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "221a768b97b992e52796e429b59e4ce62edb671c32ec4b82b443a0993abb9158",
         intel: "54ab25014b12cdb7df143a58e5ad9685c57f7d67efaee6416b43eb9b92756547"

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
