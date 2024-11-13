cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.6"
  sha256 arm:   "2382abffb20d397dd87d5ae96c5e39625b45080a3f0f57b4547451d31ea7b8f6",
         intel: "91be741eb4f606561a33d60315dcee3fd0a40ee2981943fd1acc56e7847262b1"

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
