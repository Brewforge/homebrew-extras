cask "dropclock" do
  version "1.6"
  sha256 "944b93ab6eb4f848f0c936c98c8d033e3e9791a26c29ece995bd5f8e2bbec462"

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
