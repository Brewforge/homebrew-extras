cask "wox" do
  arch arm: "arm64", intel: "arm64"

  version "2.0.0-nightly,20240531-696934"
  sha256 "9cf370603ada96d41295219b34abb0e2f1f2d5da004730fe410d92d55dc65d93"

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
