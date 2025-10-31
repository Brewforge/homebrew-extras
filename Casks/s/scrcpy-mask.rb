cask "scrcpy-mask" do
  version "0.7.1"
  sha256 "784d84fc2ebb7c5c84d8b4d13fe1ef0fdfa179c525787da8aa567bf589278c79"

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
