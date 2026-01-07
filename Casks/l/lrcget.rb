cask "lrcget" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "54b1f5dfe313acd900a7eb7d726e35d0ad4ad5461bb673aadc5de16eaf0a804d",
         intel: "ef0ac1b933ec68af6bc94e9c0ff5655647e61837ed3cb13f0c842ae7d3aff632"

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
