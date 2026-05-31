cask "goldendict-ng" do
  arch arm: "arm64", intel: "x86_64"

  version "26.5.6,6.8.3"
  sha256 "2f21ad4022ee3755d79212953850bf519646af032a1bbe1761a2d0599180a870"

  url "https://github.com/xiaoyifang/goldendict-ng/releases/download/v#{version.csv.first}/GoldenDict-ng-#{version.csv.first}-Qt#{version.csv.second}-macOS-#{arch}.dmg",
      verified: "github.com/xiaoyifang/goldendict-ng/"
  name "GoldenDict"
  desc "Next Generation GoldenDict"
  homepage "https://xiaoyifang.github.io/goldendict-ng/"

  livecheck do
    url :url
    regex(%r{/v(\d{2}(\.\d{1,2}){2})/.+-Qt(6(\.\d)+)-macOS-arm64\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[3]}"
      end
    end
  end

  auto_updates true
  conflicts_with cask: "goldendict"
  depends_on arch: :arm64
  depends_on macos: :monterey

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
