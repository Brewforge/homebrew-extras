cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "1e774357edb59c53ec42ee5785cf44195fb59e80e4ddb836fce84dcb3b702507",
         intel: "2dd208e90483c256eea193b55f923ed54edb3d9618a36af63849e85c576ca3f5"

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
