cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.9"
  sha256 arm:   "b196d0b7e9e9e6d723af88f4167a967613519acf59e76827926a17e125ac70e9",
         intel: "6af2d113eefa2edcea9477891ae73d417bafbba1fc1bbcf0330d09d885b8da60"

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
