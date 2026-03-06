cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.17"
  sha256 arm:   "dcf4eb3e122a6ab015d11c6edd5f108455f34eb7b964776c1d9afebeda799b16",
         intel: "819ebd4e2b2dc8183e2cc979f419fcdd8884a51b574d4bc0a432217d11582305"

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
