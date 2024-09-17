cask "scrcpy-mask" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "18eab001e121f01dc6243a71c04280d4a8f40b25fc15f62a6ccd6765aef32ddb",
         intel: "c0120a15ecef004302eba6262a3dfa8dbd24a4a22c3816af2070014b830a5e20"

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
