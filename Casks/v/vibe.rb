cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.2"
  sha256 arm:   "8f9c205feff03516d5854efe6e91d31ef1d7ca8a5f6f54c4727b0bac052f8522",
         intel: "04075f1b4a85de4528fd6e39e8f84785edeb903aed654ca15099f82d4ce4f647"

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
