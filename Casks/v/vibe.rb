cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.19"
  sha256 arm:   "7282305f7af7cefa01492080bceba04683d10fc68bed519850c896bad5d641c7",
         intel: "db24cd366ef4791ad1530cf6cf4de9b9a21947ee3a49f3df12be0a01a8554e7f"

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
