cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "649ffb7690efd6b05ecbd6ff5fe0e08304a2d1a8440cedf316f4dbe57c773011",
         intel: "7c652525bc0d472e50f97afd46fd0118fbaa023e08c40e024a9ed88e80e8873d"

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
