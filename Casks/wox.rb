cask "wox" do
  arch arm: "arm64", intel: "arm64"

  version "2.0.0-nightly,20240530-9e0b9a"
  sha256 "03d6a7d932875dcd5c47b4947887cc53267303371c777d5cb22dbcead75a5be0"

  url "https://github.com/Wox-launcher/Wox/releases/download/v#{version.csv.first}/wox-mac-#{arch}-#{version.csv.second}.dmg"
  name "Wox"
  desc "Cross-platform launcher that simply works"
  homepage "https://github.com/Wox-launcher/Wox"

  livecheck do
    # url "https://github.com/Wox-launcher/Wox/releases"
    # regex(%r{/v?(\d+(?:\.\d+)+)(-nightly)?/wox-mac-#{arch}-(\d+-\h+)\.dmg$}i)
    # strategy :github_latest do |json, regex|
    #   json["assets"]&.map do |asset|
    #     match = asset["browser_download_url"]&.match(regex)
    #     next if match.blank?

    #     "#{match[1]}#{match[2]},#{match[3]}"
    #   end
    # end
    skip "skip for now"
  end

  auto_updates true

  app "Wox.app"

  zap trash: []
end
