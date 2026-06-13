cask "scrcpy-mask" do
  version "0.8.1"
  sha256 "7f61feda64e61f339e5df3eb4bca5bb21874e7d9d3a5909de60bba17a4f17f6c"

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
