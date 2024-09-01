cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.1"
  sha256 arm:   "0e1a7fa37f19e4d5a9c5f625573dd80ed2337bdc126e60961d9b0ea15b92fb43",
         intel: "cc3736a909f5e07249870da3cccdb2568bf6b369121608f10c809dab24b72da6"

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
