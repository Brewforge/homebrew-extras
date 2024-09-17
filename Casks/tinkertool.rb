cask "tinkertool" do
  version "10.0"
  sha256 :no_check

  url "https://www.bresink.biz/download3.php?PHPSESSID=f1bjvspkef6q63s5cc9q5gse9i"
  name "TinkerTool"
  desc "Gives you access to additional system preference settings"
  homepage "https://www.bresink.com/osx/TinkerTool.html"

  livecheck do
    url "https://www.bresink.com/osx/0TinkerTool/download.php"
    regex(/(\d+(?:\.\d+)+) \(Build \d+\)/i)
  end

  installer script: {
    executable: "#{staged_path}/Contents/MacOS/TinkerTool",
  }

  app "TinkerTool.app"

  zap trash: [
    "~/Library/Application Scripts/com.bresink.system.tinkertool",
    "~/Library/Containers/com.bresink.system.tinkertool",
  ]
end
