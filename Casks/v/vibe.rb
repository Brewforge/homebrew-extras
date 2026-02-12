cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.12"
  sha256 arm:   "71513267b3bbc73cb18c13689d5877d4fbc4e5a7470aa8861c20464aebdacf97",
         intel: "4eb0a59c6acba22b4d4accf7ab403d651f2bb815543659027e18449809a3540d"

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
