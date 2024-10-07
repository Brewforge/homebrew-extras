cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "96ec30e00abda10944e1143b8992ddf7fd23419e390e3d84bf2e93981d92a611",
         intel: "f631b35c1af0ec306b0bff5266bcb25e960348e37c44aa218144cc9c54c617a5"

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
