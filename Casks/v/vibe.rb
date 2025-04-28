cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.5"
  sha256 arm:   "74573f31017dcf87f268f8d1acc4a21dc84e282a4ad227e473df95118cd3f907",
         intel: "071e804c7c7a3dee14cfee02b30c56b23cba16b03de62daa245cceb23d897d11"

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
