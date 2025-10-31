cask "rune-music" do
  version "2.0.0-alpha.9"
  sha256 "0e6797b280e9059765a02bc007d43b6ee1f1a6ab34b0616195b82298cfa79ef8"

  url "https://github.com/Losses/rune/releases/download/v#{version}/Rune-v#{version}-macOS.dmg",
      verified: "github.com/Losses/rune/"
  name "Rune"
  desc "Player that blends classic design with modern technology"
  homepage "https://rune.not.ci/"

  livecheck do
    url :url
    regex(/^v?(\d+(\.\d+)+(-alpha\.\d+)?)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true

  app "Rune.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/ci.not.rune",
    "~/Library/Application Scripts/ci.not.rune",
    "~/Library/Containers/ci.not.rune",
  ]
end
