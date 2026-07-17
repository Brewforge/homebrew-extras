cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.23"
  sha256 arm:   "d443c9ab143bd5d5244ce2c4fb6410f9f940f8a4eb94e3a4a5cc87f57a10d9d9",
         intel: "ea5ad4f6db3e2781819c6446bacd107776812659a7a3ac32e4069f45e2f91576"

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
