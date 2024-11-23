cask "goldendict-ng" do
  arch arm: "arm64", intel: "x86_64"

  version "24.09.1,Release.ca9dd133,6.7.2"
  sha256 arm:   "0376a00fd69a261ffc68be9bddeae4422053ef5935b9364b12eadab686b6be4d",
         intel: "284906aea4e5b1ef1fa37cd8b99dc6fba9ba86a2e8ffa6688007d7a25ef105ab"

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
