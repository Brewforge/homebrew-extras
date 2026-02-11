cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.11"
  sha256 arm:   "221ca8de480492e66d7e9c7f759e0b2d17c2c8c03094a18a98e1c6ae078c1d9b",
         intel: "0e534658898c7f58a37116e3cc1cfeebfb9852f57ebf2260224fe16079914e43"

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
