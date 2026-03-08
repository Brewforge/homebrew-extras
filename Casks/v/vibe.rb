cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.18"
  sha256 arm:   "7619185ff277b0bfaad2d979a36911d52129dcc9e8f8da4a53a15bdcae4d9c94",
         intel: "05377bfe1a1b555d2fba5a14d271f976a061329b9cf457056535fba9260576df"

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
