cask "tinkertool" do
  version "eai5aujc1e2lo9jaq02v24eshl"
  sha256 "4eda2a040df4c5c7eefcd975c6164fcbf57704654090bcf290a298d251ac40a8"

  url "https://www.bresink.biz/download3.php?PHPSESSID=#{version}",
      verified: "bresink.biz/"
  name "TinkerTool"
  desc "Gives you access to additional system preference settings"
  homepage "https://bresink.com/osx/TinkerTool.html"

  livecheck do
    # url "https://bresink.com/osx/0TinkerTool/download.php"
    # regex(/(\d+(?:\.\d+)+) \(Build \d+\)/i)
    # regex(/PHPSESSID=([\d+\w]+)/i)
    skip "cannot obtain available info directly"
  end

  app "TinkerTool.app"

  uninstall quit: "com.bresink.system.tinkertool"

  zap trash: [
    "~/Library/Application Scripts/com.bresink.system.tinkertool",
    "~/Library/Containers/com.bresink.system.tinkertool",
  ]
end
