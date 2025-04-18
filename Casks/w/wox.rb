cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.0-beta.2"
  sha256 arm:   "7e18d1e49aa8de280b84cd0060686abcaa2790bc2fe8b408058229c4edaf37d2",
         intel: "3c7d87d6e2f652805b94f4655b1d22613c20c01d765c41a02f139e3dafa449a6"

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
