cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "01fc096cada8e57c78b956778b31b03fbb8a8387d1a70947f3cefc2047092131",
         intel: "32622ca57b84aebbb2a3c8c4f8d9a48e0b039e848b723a72de06a47527e3737c"

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
