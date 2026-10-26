cask "lrcget" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.1"
  sha256 arm:   "6f1846351179db98de8a7a88459696717cbc8a60ecac71c7c9f6a5c95e952b03",
         intel: "96e9fad622e1a3a8f4c90e098db4f38cfbbee25df08b349be109d57f31fe96c7"

  url "https://github.com/tranxuanthang/lrcget/releases/download/#{version}/LRCGET_#{version}_#{arch}.dmg"
  name "LRCGET"
  desc "Utility for mass-downloading LRC synced lyrics for your offline music library"
  homepage "https://github.com/tranxuanthang/lrcget"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "LRCGET.app"

  zap trash: [
    "~/Library/Application Support/net.lrclib.lrcget",
    "~/Library/Caches/net.lrclib.lrcget",
    "~/Library/Preferences/net.lrclib.lrcget.plist",
    "~/Library/WebKit/net.lrclib.lrcget",
  ]
end
