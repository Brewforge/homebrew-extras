cask "tinkertool" do
  version "9.8"
  sha256 :no_check

  url "https://www.bresink.com/download3.php?PHPSESSID=92a1feeb341686c3289ed317c51048d7"
  name "TinkerTool"
  desc "Gives you access to additional system preference settings"
  homepage "https://www.bresink.com/osx/TinkerTool.html"

  livecheck do
    url "https://www.bresink.com/osx/0TinkerTool/download.php"
    regex(/(\d+(?:\.\d+)+) \(Build \d+\)/i)
  end

  app "TinkerTool.app"

  zap trash: [
    "~/Library/Application Scripts/com.bresink.system.tinkertool",
    "~/Library/Containers/com.bresink.system.tinkertool",
  ]
end
