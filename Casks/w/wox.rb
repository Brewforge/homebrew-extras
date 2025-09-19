cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.0-beta.5"
  sha256 arm:   "90707e62d3f3590b77ea85283cd9d93b297ed223f10bd813dadbbfdef431f8a9",
         intel: "8f1bbeb1d69a8e5d9e690835abcb5f61bf8419f710df26f0e1a75bfd9e0b095d"

  url "https://github.com/Wox-launcher/Wox/releases/download/v#{version.csv.first}/wox-mac-#{arch}.dmg"
  name "Wox"
  desc "Cross-platform launcher that simply works"
  homepage "https://github.com/Wox-launcher/Wox"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)(-beta\.\d)?/wox-mac-#{arch}\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]}#{match[2]}"
      end
    end
  end

  auto_updates true

  app "Wox.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.github.wox",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/wox",
    "~/.wox",
    "~/Library/Preferences/com.github.wox.plist",
  ]
end
