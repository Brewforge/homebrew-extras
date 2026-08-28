cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.1.6"
  sha256 arm:   "a743dcf05f7c994a392d40e128dd4ee43dbc3f40108248aa0ed594c79857519f",
         intel: "9d77d51b842ed9f876d0c8620e317bc922a16437b382750a2f8f592410e11ae3"

  url "https://github.com/thewh1teagle/vibe/releases/download/v#{version}/vibe_#{version}_#{arch}.dmg"
  name "vibe"
  desc "Transcribe on your own"
  homepage "https://github.com/thewh1teagle/vibe/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "vibe.app"

  preflight do
    system_command "xattr",
                   args: ["-cr", "#{staged_path}/vibe.app"]
  end

  zap trash: [
    "~/Library/Application Support/github.com.thewh1teagle.vibe",
    "~/Library/Caches/thewh1teagle.vibe.plist",
    "~/Library/Preferences/github.com.thewh1teagle.vibe.plist",
    "~/Library/WebKit/github.com.thewh1teagle.vibe",
    "~/Library/WebKit/thewh1teagle.vibe.plist",
  ]
end
