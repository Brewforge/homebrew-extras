cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.6"
  sha256 arm:   "93405990a8a240156e24c37078855cca070e4e205bded4b606b99208e9b145d5",
         intel: "7661b72a1bf8142f1566e90b788c0e8913a238a60957339cffbda23e05cbeb76"

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
