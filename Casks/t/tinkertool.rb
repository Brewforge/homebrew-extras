cask "tinkertool" do
  version "10.0"
  sha256 :no_check

  url "https://bresink.biz/download3.php?PHPSESSID=f1bjvspkef6q63s5cc9q5gse9i",
      verified: "bresink.biz/"
  name "TinkerTool"
  desc "Gives you access to additional system preference settings"
  homepage "https://bresink.com/osx/TinkerTool.html"

  livecheck do
    url "https://bresink.com/osx/0TinkerTool/download.php"
    regex(/(\d+(?:\.\d+)+) \(Build \d+\)/i)
  end

  installer script: {
    executable: "#{staged_path}/Contents/MacOS/TinkerTool",
  }

  app "TinkerTool.app"

  uninstall quit: "com.bresink.system.tinkertool"

  zap trash: [
    "~/Library/Application Scripts/com.bresink.system.tinkertool",
    "~/Library/Containers/com.bresink.system.tinkertool",
  ]
end
