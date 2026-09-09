cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.2.2"
  sha256 arm:   "46f519a312c9014ad152a28fd9808d8532c07d688c03c890f24a87bbea33e543",
         intel: "74008de278eb8380997771ec27d3b247835965ad1c60504a63e46c298e8be182"

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
