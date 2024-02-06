cask "goldendict" do
  version "6.6.1,20231208"
  sha256 :no_check

  url "https://github.com/xiaoyifang/goldendict-ng/releases/download/v23.12.07-HeavySnow.b0086d5c/#{version.csv.first}-GoldenDict_macos-12_homebrew_#{version.csv.second}.dmg",
      verified: "github.com/xiaoyifang/goldendict-ng/"
  name "GoldenDict"
  desc "Next Generation GoldenDict"
  homepage "http://goldendict.org/"

  depends_on macos: ">= :sierra"

  app "GoldenDict.app"
  binary "#{appdir}/GoldenDict.app/Contents/MacOS/GoldenDict"

  zap trash: [
    "~/Library/Caches/GoldenDict-ng",
    "~/Library/Saved Application State/org.xiaoyifang.savedState",
    "~/.goldendict",
  ]
end
