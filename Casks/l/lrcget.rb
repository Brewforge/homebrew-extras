cask "lrcget" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "9eed775d42706c82954aaff7793f8ad93338e5b94c406f3ab98a9ea0c8f2920b",
         intel: "942402a0a3b9104c4447c916ddfe4a4dbaa301aaf932fce56abb0d3cba4dcbb8"

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
