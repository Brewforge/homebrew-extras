cask "goldendict-ng" do
  version "6.6.1,24.01.22,LoongYear,3dddb3be"
  sha256 :no_check

  url "https://github.com/xiaoyifang/goldendict-ng/releases/download/v#{version.csv.second}-#{version.csv.third}.#{version.csv.fourth}/#{version.csv.first}-GoldenDict_macos-13_homebrew_20#{version.csv.second.no_dots}.dmg",
      verified: "github.com/xiaoyifang/goldendict-ng/"
  name "GoldenDict"
  desc "Next Generation GoldenDict"
  homepage "http://goldendict.org/"

  livecheck do
    url "https://github.com/xiaoyifang/goldendict-ng/releases"
    strategy :page_match do |page|
      match = page.match(%r{href=.*/v(\d+(?:\.\d+)+)-(\w+)\.([\d\w]+)/(\d+(?:\.\d+)+)-GoldenDict_macos-13_homebrew_20\d+\.dmg})
      next if match.blank?

      "#{match[4]},#{match[1]},#{match[2]},#{match[3]}"
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
