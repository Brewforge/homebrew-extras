cask "scrcpy-mask" do
  version "0.8.2"
  sha256 "2313880714b307a172c78cfbcd14f05b7e5db6aa4075553fa7d6a2f7cb9a6784"

  url "https://github.com/AkiChase/scrcpy-mask/releases/download/v#{version}/scrcpy-mask-macos-arm64.dmg"
  name "scrcpy-mask"
  desc "Scrcpy client aimed at providing mouse and key mapping to control Android device"
  homepage "https://github.com/AkiChase/scrcpy-mask"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "scrcpy-mask.app"

  zap trash: [
    "~/Library/Application Support/com.akichase.mask",
    "~/Library/Caches/com.akichase.mask",
    "~/Library/Saved Application State/com.akichase.mask.savedState",
    "~/Library/WebKit/com.akichase.mask",
  ]
end
