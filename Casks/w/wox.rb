cask "wox" do
  version "2.0.0"
  sha256 "02d0f310bc6665f9a4145f0f4ea4a5d3dcc8dd202256867497939659e7c057e3"

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
