cask "vibe" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.2"
  sha256 arm:   "04209794a30dafab36a734464c2f19511ac95d38189b6058a4509e534ea12fd1",
         intel: "547752b71e6af49b6ddd68d84f8d05d105cdf57933107d17909fe33338fe530d"

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
