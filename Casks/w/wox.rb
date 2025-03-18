cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.0-beta.1"
    sha256 arm:   "40e19037328f0a2237d23c2fa442c972697a2fb429794f05934600ef8a8ffb61",
         intel: "22479889d413a70c5f5372dfca46f134a5f5216255a667fa8457d2190fe1ad42"

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

  zap trash: []
end
