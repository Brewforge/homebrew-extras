cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.3.5"
  sha256 arm:   "efaf965175cf9d6b7c6782e38eb42b50800a4645c06771584fcbd46c74d75807",
         intel: "52109c125f8678697065fbdd567ee87796b7c4d6b389db1f03537ed38c6720b7"

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
