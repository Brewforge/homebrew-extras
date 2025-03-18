cask "tinkertool" do
  version "10.2"
  sha256 :no_check

  url "https://bresink.com/download3.php?PHPSESSID=8c4b0e27ab71eb830d06841116646228",
      verified: "bresink.com/"
  name "TinkerTool"
  desc "Gives you access to additional system preference settings"
  homepage "https://bresink.com/osx/TinkerTool.html"

  livecheck do
    # url "https://bresink.com/osx/0TinkerTool/download.php"
    # regex(/(\d+(?:\.\d+)+) \(Build \d+\)/i)
    skip "error"
  end

  app "TinkerTool.app"

  uninstall quit: "com.bresink.system.tinkertool"

  zap trash: [
    "~/Library/Application Scripts/com.bresink.system.tinkertool",
    "~/Library/Containers/com.bresink.system.tinkertool",
  ]
end
