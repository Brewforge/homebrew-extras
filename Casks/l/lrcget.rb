cask "lrcget" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.1"
  sha256 arm:   "bf6aeea346ce74423c04307ee46c23f4ff17b7c23fa10f7803674eb0bd4ca39d",
         intel: "fdd8deb60c0a72e5eb286399e9213e36c78d8535621338e3bbb12c1e250febf2"

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
    "~/Library/Application Support/net.lrclib.lrcget",
    "~/Library/Caches/net.lrclib.lrcget",
    "~/Library/Preferences/net.lrclib.lrcget.plist",
    "~/Library/WebKit/net.lrclib.lrcget",
  ]
end
