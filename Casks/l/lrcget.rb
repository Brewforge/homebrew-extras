cask "lrcget" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "827464785e0c7edd1e89eacf0a1afb76204aa8816ea34bfa21ea94dee2fab0d7",
         intel: "6fbd558f908d19145b6efa37a627125992c7e8501f4aeb7a38af94704ad09d62"

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
