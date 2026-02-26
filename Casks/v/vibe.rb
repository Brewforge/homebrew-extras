cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.14"
  sha256 arm:   "c6403691730ee22f216809783f40d90c043a185dbf28f1309f61d0c4e43d84c9",
         intel: "d02ada591bbc6bd5960decf47a687e8acf8997affdfa8d5755f9e34a3b1119a4"

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
