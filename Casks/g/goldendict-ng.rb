cask "goldendict-ng" do
  arch arm: "arm64", intel: "x86_64"

  version "25.06.0,Release.8a87a79b,6.7.2"
  sha256 arm:   "6211ffa170ecd22b07e0b097200b9858cd28da9b8176c799397944fcfafbc115",
         intel: "306a2be674f59e9f4803fb7696149a52d3690093a88a44e47b2891dd80d54075"

  url "https://github.com/xiaoyifang/goldendict-ng/releases/download/v#{version.csv.first}-#{version.csv.second}/GoldenDict-ng-#{version.csv.first}-Qt#{version.csv.third}-macOS-#{arch}.dmg",
      verified: "github.com/xiaoyifang/goldendict-ng/"
  name "GoldenDict"
  desc "Next Generation GoldenDict"
  homepage "https://xiaoyifang.github.io/goldendict-ng/"

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

  auto_updates true
  conflicts_with cask: "goldendict"
  depends_on macos: ">= :monterey"

  app "GoldenDict-ng.app", target: "GoldenDict.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/goldendict.wrapper.sh"
  binary shimscript, target: "goldendict"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/GoldenDict.app/Contents/MacOS/goldendict' "$@"
    EOS
  end

  zap trash: [
    "/private/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/org.xiaoyifang",
    "~/Library/Preferences/org.xiaoyifang.plist",
    "~/Library/Saved Application State/org.xiaoyifang.savedState",
  ]
end
