cask "wox" do
  arch arm: "arm64", intel: "arm64"

  version "2.0.0-nightly,20240528-078dae"
  sha256 "015ee4ec5c1ff9ec9165d42df29d3f597dba8fdd2cccb2ad483746fb7468d8a1"

  url "https://github.com/Wox-launcher/Wox/releases/download/v#{version.csv.first}/wox-mac-#{arch}-#{version.csv.second}.dmg"
  name "Wox"
  desc "Cross-platform launcher that simply works"
  homepage "https://github.com/Wox-launcher/Wox"

  livecheck do
    url "https://github.com/Wox-launcher/Wox/releases"
    regex(%r{/v?(\d+(?:\.\d+)+)(-nightly)?/wox-mac-#{arch}-(\d+-\h+)\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]}#{match[2]},#{match[3]}"
      end
    end
  end

  auto_updates true

  app "Wox.app"

  zap trash: []
end
