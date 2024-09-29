cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.5"
  sha256 arm:   "22b7afa1b326dcb19586b69d5e40f523a99f5364db9b50fc0ebede7d4d45120a",
         intel: "185dc9ced1522b35fcc84b888b15a4622b264dbeca5db9c63a19183103d0ff62"

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
