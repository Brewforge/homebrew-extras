cask "goldendict-ng" do
  arch arm: "arm64", intel: "x86_64"

  version "24.05.05,6.7.0,LiXia,ecd1138c"
  sha256 arm:   "0d4d90b4a8cfb07070f2105bdadedc998bd4437528760716e07a7d904c84cc12",
         intel: "a0699470f9a796a2a7e2619585b9c58ccd4527b1f7b9483d67b30abedd81cb66"

  url "https://github.com/xiaoyifang/goldendict-ng/releases/download/v#{version.csv.first}-#{version.csv.third}.#{version.csv.fourth}/GoldenDict-#{version.csv.first}-Qt#{version.csv.second}-#{arch}.dmg",
      verified: "github.com/xiaoyifang/goldendict-ng/"
  name "GoldenDict"
  desc "Next Generation GoldenDict"
  homepage "http://goldendict.org/"

  livecheck do
    url "https://github.com/xiaoyifang/goldendict-ng/releases"
    strategy :page_match do |page|
      match = page.match(%r{href=.*/v(\d+(\.\d+)+)-(\w+)\.([\d\w]+)/(\d+(\.\d+)+)-GoldenDict-Qt(\d+(\.\d+)+)-#{arch}\.dmg})
      next if match.blank?

      "#{match[1]},#{match[4]},#{match[2]},#{match[3]}"
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
