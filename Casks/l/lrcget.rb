cask "lrcget" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.2"
  sha256 arm:   "6e168e36b437254df77d8e3da5d7756d606db556aa0045ef1bc1a2fc532d3cd2",
         intel: "92157490ba38a23dd97180aeaea0137360eb9906127b99e429cd055cdec4d354"

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
