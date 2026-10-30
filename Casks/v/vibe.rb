cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.3.0"
  sha256 arm:   "df42209c7ee6a01ca81ee37e55e1e5cd75ac5454c7768720ce934c9a97df0394",
         intel: "8a22d615b40e10805c4d8c805a4f395a096b0fa9a34bd03efb24b6f7cf974a51"

  url "https://github.com/thewh1teagle/vibe/releases/download/v#{version}/vibe_#{version}_#{arch}.dmg"
  name "vibe"
  desc "Transcribe on your own"
  homepage "https://github.com/thewh1teagle/vibe/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "vibe.app"

  preflight_steps do
    run "xattr", args: ["-cr", "{{staged_path}}/vibe.app"]
  end

  zap trash: [
    "~/Library/Application Support/github.com.thewh1teagle.vibe",
    "~/Library/Caches/thewh1teagle.vibe.plist",
    "~/Library/Preferences/github.com.thewh1teagle.vibe.plist",
    "~/Library/WebKit/github.com.thewh1teagle.vibe",
    "~/Library/WebKit/thewh1teagle.vibe.plist",
  ]
end
