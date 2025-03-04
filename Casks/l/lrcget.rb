cask "lrcget" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.3"
  sha256 arm:   "c649a140ee32a3f8caa7261b838ff34dd315f3ab5f9416e8acbd336eb7484461",
         intel: "abaf6b6e5ba8e0073201d722a4fe63c1001243b9441ff5f8f4b683b23b780142"

  url "https://github.com/tranxuanthang/lrcget/releases/download/#{version}/LRCGET_#{version}_#{arch}.dmg"
  name "LRCGET"
  desc "Utility for mass-downloading LRC synced lyrics for your offline music library"
  homepage "https://github.com/tranxuanthang/lrcget"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "LRCGET.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/net.lrclib.lrcget",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/net.lrclib.lrcget",
    "~/Library/Application Support/net.lrclib.lrcget",
    "~/Library/Caches/net.lrclib.lrcget",
    "~/Library/Preferences/net.lrclib.lrcget.plist",
    "~/Library/WebKit/net.lrclib.lrcget",
  ]
end
