cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.7"
  sha256 arm:   "8ca108bcc69eea39ebe6cc002b436f1c8981adb298896121dee7f73322a61fdd",
         intel: "56a8e4b0dc456f10b25b53626f84bb423d970cc0e25cb3060be7ff6060aa6604"

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
