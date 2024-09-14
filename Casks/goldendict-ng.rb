cask "goldendict-ng" do
  arch arm: "arm64", intel: "x86_64"

  version "24.09.0,Release.316ec900,6.7.2"
  sha256 arm:   "4c78ca07fc06c5433525db0e7f14638f9979e61c5b530b5e8c284728e22019c9",
         intel: "724d97344cbf6231e4fdcf6ecfa4029c829b2749c0b2223f69480bb87a84634b"

  url "https://github.com/xiaoyifang/goldendict-ng/releases/download/v#{version.csv.first}-#{version.csv.second}/GoldenDict-ng-#{version.csv.first}-Qt#{version.csv.third}-macOS-#{arch}.dmg",
      verified: "github.com/xiaoyifang/goldendict-ng/"
  name "GoldenDict"
  desc "Next Generation GoldenDict"
  homepage "http://goldendict.org/"

  livecheck do
    url "https://github.com/xiaoyifang/goldendict-ng/releases"
    regex(%r{/v(\d{2}(\.\d{1,2}){2})-(\w+\.\h+)/.+-Qt(\d+(\.\d+)+)-macOS-#{arch}\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[3]},#{match[4]}"
      end
    end
  end

  depends_on macos: ">= :sierra"

  app "GoldenDict-ng.app"
  binary "#{appdir}/GoldenDict.app/Contents/MacOS/GoldenDict-ng"

  zap trash: [
    "~/.goldendict",
    "~/Library/Caches/GoldenDict-ng",
    "~/Library/Saved Application State/org.xiaoyifang.savedState",
  ]
end
