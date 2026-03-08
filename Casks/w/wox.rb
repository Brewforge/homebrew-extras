cask "wox" do
  version "2.0.1"
  sha256 "2ec186f0cf3a14e92e592ad1676e16b187ccce38b2fdbd50c5f0653d3302633c"

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
    "~/.wox",
    "~/Library/Preferences/com.github.wox.plist",
  ]
end
