cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.0-nightly,20240513-0eae47"
  sha256 "62c7e25a4721edaf743d59c2d0f49ddc54e2a6c8cd4b713f35611a57b8e55a20"

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
    # skip "skip for now"
  end

  auto_updates true

  app "Wox.app"

  zap trash: []
end
