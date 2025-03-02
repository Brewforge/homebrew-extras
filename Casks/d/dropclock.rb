cask "dropclock" do
  version "1.3"
  sha256 "312a31357f265cc602aa6765f16bc00105b9d81e4f659b6e988750cd62d50c97"

  url "https://github.com/WrkX/Dropclock/releases/download/#{version}/Dropclock.dmg"
  name "ChatGPT"
  desc "Lightweight and intuitive application designed to make creating timers as quick and seamless as possible"
  homepage "https://github.com/WrkX/Dropclock"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Dropclock.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.Wrkx.Dropclock",
    "~/Library/Containers/com.Wrkx.Dropclock",
    "~/Library/Application Scripts/com.Wrkx.Dropclock"
  ]
end
