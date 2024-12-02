cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.7"
  sha256 arm:   "404e31ba09d06a6a643a987905e0e9c99fbfca699f7d9161a67e32f8332e52ee",
         intel: "983dcd87085d18b5e0df7c100d805e7d2aa6b8e0b12672f18d3585e13c3460e1"

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
