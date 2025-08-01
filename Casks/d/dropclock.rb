cask "dropclock" do
  version "1.5"
  sha256 "25676eb0d1b6f045e011410fd92924f4aeee165f787cda096116d273ec7aee40"

  url "https://github.com/WrkX/Dropclock/releases/download/#{version}/Dropclock.dmg"
  name "ChatGPT"
  desc "Creating timers as quick and seamless as possible"
  homepage "https://github.com/WrkX/Dropclock"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Dropclock.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.Wrkx.Dropclock",
    "~/Library/Application Scripts/com.Wrkx.Dropclock",
    "~/Library/Containers/com.Wrkx.Dropclock",
  ]
end
