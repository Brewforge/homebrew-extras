cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.21"
  sha256 arm:   "d451577fffea3a7913731ed9965e36fcf66fdbf181b11115c79f6ba854b26871",
         intel: "e5262ff6d9808a65af2acd0d2f13f88f160624fe0019164c38ed2f3db8b3b446"

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

  preflight do
    system_command "xattr",
                   args: ["-cr", "#{staged_path}/vibe.app"]
  end

  zap trash: [
    "~/Library/Application Support/github.com.thewh1teagle.vibe",
    "~/Library/Caches/thewh1teagle.vibe.plist",
    "~/Library/Preferences/github.com.thewh1teagle.vibe.plist",
    "~/Library/WebKit/github.com.thewh1teagle.vibe",
    "~/Library/WebKit/thewh1teagle.vibe.plist",
  ]
end
