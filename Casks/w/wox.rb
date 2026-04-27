cask "wox" do
  version "2.0.3"
  sha256 "30b2f9b462c121e17336fb7e9ed0c028289bc97f4935923d6bea30ac48562498"

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
  depends_on arch: :arm64

  app "Wox.app"

  zap trash: [
    "~/.wox",
    "~/Library/Preferences/com.github.wox.plist",
  ]
end
