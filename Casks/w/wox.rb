cask "wox" do
  version "2.0.0-beta.7"
  sha256 "9202454a2fa16217bb298bbfa9abbb5cfb31144a501855c98b1b6620321302f5"

  url "https://github.com/Wox-launcher/Wox/releases/download/v#{version.csv.first}/wox-mac-arm64.dmg"
  name "Wox"
  desc "Cross-platform launcher that simply works"
  homepage "https://github.com/Wox-launcher/Wox"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)(-beta\.\d)?/wox-mac-arm64\.dmg$}i)
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
