cask "lrcget" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "c60a7a92cc2bf608dfbb68cb86248b4b49318ed3a8255c714f232aaa92a3aa8f",
         intel: "04ee3a10f21b5a9935f7becb8f6424b93e513ce17037acf2c7aea76d2d6a3be3"

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
