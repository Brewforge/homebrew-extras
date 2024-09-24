cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.4"
  sha256 arm:   "8f9071d7ca127e50c2c77c592327faf559efee58a757879c63849e49ccc6904f",
         intel: "964cb443dc0250659f3bff93cc11087f7bc5e039fbf7fd93a2854b7ec621a128"

  url "https://github.com/thewh1teagle/vibe/releases/download/v#{version}/vibe_#{version}_#{arch}.dmg"
  name "vibe"
  desc "Transcribe on your own"
  homepage "https://github.com/thewh1teagle/vibe/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "vibe.app"

  zap trash: [
    "~/Library/Application Support/github.com.thewh1teagle.vibe",
    "~/Library/Caches/thewh1teagle.vibe.plist",
    "~/Library/WebKit/thewh1teagle.vibe.plist",
  ]
end
