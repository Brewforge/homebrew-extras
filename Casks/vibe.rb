cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.0"
  sha256 arm:   "37c18c3c239f86590a96ef94fb90c6c42933d313b287a27ac1e22ab81c219f5b",
         intel: "a7a20b4e45713876f7f276657dd37350e0565554ef70b47ee898ebef0a126b2d"

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
    "~/Library/WebKit/thewh1teagle.vibe.plist",
  ]
end
