cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.3"
  sha256 arm:   "356a8e93032870ce38b97e3c0a8793c602a3462be5b6ba19c5fa0c7ecdb8171e",
         intel: "378c41e71c040eadcbbd118821d3071990498df680d2a15a7b5d5abd4b47f1c2"

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
