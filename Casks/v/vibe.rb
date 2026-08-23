cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.1.2"
  sha256 arm:   "84e7581238529595be82900bcc97071be3287b269de162711da935320f254305",
         intel: "53476ea3a2c6d60aceb72b2c73dfe73c3e7dd84da6e18462ffadd5396d2961d9"

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
