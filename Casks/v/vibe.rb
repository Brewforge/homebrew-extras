cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.16"
  sha256 arm:   "1eaa9786e030ec12fe655cee36849290e37acc7da88002fa9fb4fcfbac4316f1",
         intel: "c6d03b4650351e77137efb06fe0f57e2e140d2519aa93b057ca8cc4662428feb"

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
