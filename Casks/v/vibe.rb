cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.15"
  sha256 arm:   "65a541b308d4843526fad36d26843b6e165482611bfcc1ecd4efaac92b412c3e",
         intel: "de5d9948b1c882e9fc9dcc98e92766a53fe02a284a9305b6e667543cc71ec261"

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
