cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.5"
  sha256 arm:   "7185fc4d36b39f79bdae4f340c940bee92c64f26fefb7fa1a048793f93d5a21c",
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
    "~/Library/Application Support/github.com.thewh1teagle.vibe",
    "~/Library/Caches/thewh1teagle.vibe.plist",
    "~/Library/Preferences/github.com.thewh1teagle.vibe.plist",
    "~/Library/WebKit/github.com.thewh1teagle.vibe",
    "~/Library/WebKit/thewh1teagle.vibe.plist",
  ]
end
