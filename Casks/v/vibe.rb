cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.13"
  sha256 arm:   "9782161b7dccdee45512b307e74c360851f692c27567932fc10f5121e990e30e",
         intel: "80c51a88aa310439611c088af1492aab719593c30dc4d3b460ee848e3b3fc1c6"

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
