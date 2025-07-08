cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.0-beta.3"
  sha256 arm:   "f2faea1574635d8369058ece0f6e5374a20ccabb04e08f02f5c4f85db841e1af",
         intel: "2be7a0c19c0240831a26a78f972295413548577e17cb55ba019df563e4b92511"

  url "https://github.com/Wox-launcher/Wox/releases/download/v#{version.csv.first}/wox-mac-#{arch}.dmg"
  name "Wox"
  desc "Cross-platform launcher that simply works"
  homepage "https://github.com/Wox-launcher/Wox"

  livecheck do
    url "https://github.com/Wox-launcher/Wox/releases"
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
