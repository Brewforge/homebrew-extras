cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.8"
  sha256 arm:   "dfeae64db3408e3682503066bab5b957dd17886ad830ddbc9d8657f56a5b9c6c",
         intel: "76cf435c0f55a3156704951f8a92e016b23bc02f9c31e4bbdc4e779fee8a744d"

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
    "~/Library/Preferences/github.com.thewh1teagle.vibe.plist",
    "~/Library/WebKit/github.com.thewh1teagle.vibe",
    "~/Library/WebKit/thewh1teagle.vibe.plist",
  ]
end
