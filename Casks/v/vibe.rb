cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.1"
  sha256 arm:   "14d5ed9efed5071bbff28ddac3f0d53f6dcb8a90f19c4faad8a9a99d374dddbd",
         intel: "4c9835d48175ce68532681a4339c68b5a758a87ea9af4676d0d175c9334a3c6f"

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
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/github.com.thewh1teagle.vibe",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/github.com.thewh1teagle.vibe",
    "~/Library/Application Support/github.com.thewh1teagle.vibe",
    "~/Library/Caches/thewh1teagle.vibe.plist",
    "~/Library/Preferences/github.com.thewh1teagle.vibe.plist",
    "~/Library/WebKit/github.com.thewh1teagle.vibe",
    "~/Library/WebKit/thewh1teagle.vibe.plist",
  ]
end
