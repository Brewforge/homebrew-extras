cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.6"
  sha256 arm:   "b62fb022ade48491de6e029048cb60948536eb28425c802eea658a8313b7258c",
         intel: "a16856a7f1513ad4c7d70b3bfe49ffa9526d23e8ddc4516dc6e9b569c72fe145"

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
