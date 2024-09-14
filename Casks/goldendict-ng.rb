cask "goldendict-ng" do
  arch arm: "arm64", intel: "x86_64"

  version "24.05.05,LiXia.ecd1138c,6.7.0"
  sha256 arm:   "0d4d90b4a8cfb07070f2105bdadedc998bd4437528760716e07a7d904c84cc12",
         intel: "a0699470f9a796a2a7e2619585b9c58ccd4527b1f7b9483d67b30abedd81cb66"

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

  app "GoldenDict.app"
  binary "#{appdir}/GoldenDict.app/Contents/MacOS/GoldenDict"

  zap trash: [
    "~/.goldendict",
    "~/Library/Caches/GoldenDict-ng",
    "~/Library/Saved Application State/org.xiaoyifang.savedState",
  ]
end
