cask "rune-music" do
  version "1.1.0"
  sha256 "42ecbbd7cda5514afbf5147a561948ec86776af33614e5dad464404dd4663e1d"

  url "https://github.com/Losses/rune/releases/download/v#{version}/Rune-v#{version}-macOS.dmg",
      verified: "github.com/Losses/rune/"
  name "Rune"
  desc "Player that blends classic design with modern technology"
  homepage "https://rune.not.ci/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Rune.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/ci.not.rune",
    "~/Library/Application Scripts/ci.not.rune",
    "~/Library/Containers/ci.not.rune",
  ]
end
