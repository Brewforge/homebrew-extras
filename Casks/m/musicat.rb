cask "musicat" do
  arch arm: "aarch64", intel: "x64"

  version "0.17.1"
  sha256 arm:   "34800fc097b66e8501cba92d8e9de85eebdac400ddc521be1c2cf3d5950dfed8",
         intel: "f186e1ba260be501d84259ccbfe610f1c26b463fb47d530850644dd561f73709"

  url "https://github.com/basharovV/musicat/releases/download/v#{version}/Musicat_#{version}_#{arch}.dmg"
  name "Musicat"
  desc "Sleek desktop music player and tagger for offline music"
  homepage "https://github.com/basharovV/musicat"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Musicat.app"

  zap trash: [
    "~/Library/Application Support/Musicat",
    "~/Library/Caches/Musicat",
    "~/Library/Logs/Musicat",
    "~/Library/Preferences/Musicat.plist",
    "~/Library/WebKit/Musicat",
  ]
end
