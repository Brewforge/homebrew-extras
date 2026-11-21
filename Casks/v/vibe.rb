cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.3.8"
  sha256 arm:   "48dd4ffd5b4fc6a9466fc2b68ee04d398e794404758577e46f27163614138a39",
         intel: "03a0ba397014c7b030824ee05b0f496ce0285407a16fba570b8833394ea731c3"

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
