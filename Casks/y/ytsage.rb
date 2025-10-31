cask "ytsage" do
  arch arm: "arm64", intel: "x64"

  version "4.9.2"
  sha256 arm:   "1308fcd0c6277918e8a45eaba81f877bf27204bd684320941d5e8920365042fd",
         intel: "6b4f1dbd7014aeb1466b7a4c1b918d1c0a22e20cd3bd495684e475dca0d4ed25"

  url "https://github.com/oop7/YTSage/releases/download/v#{version}/YTSage-v#{version}-#{arch}.dmg"
  name "YTSage"
  desc "Modern YouTube downloader with a clean PySide6 interface"
  homepage "https://github.com/oop7/YTSage/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "YTSage-v#{version}.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/YTSage-v4.8.3",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/4a151483-1084-4bff-b914-95692b73d397",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/68329290-31b5-489c-b5d8-bf1331732aad",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dsymutil-021834",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dsymutil-283a8b",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dsymutil-48376c",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dsymutil-658318",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dsymutil-6683cf",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dsymutil-683961",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dsymutil-783e28",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dsymutil-7ae683",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dsymutil-834169",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dsymutil-99c83c",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dsymutil-a983e7",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dsymutil-ca9839",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dsymutil-d1d83c",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dsymutil-d6883c",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dsymutil-d833e1",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dsymutil-d88312",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dsymutil-ef2683",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/lemminx-temp8886636787863583763",
    "~/Library/Application Support/google-heartbeat-storage/heartbeats-1_342559837177_ios_829944bbca5d6cdbeecb28",
    "~/Library/Preferences/YTSage-v4.8.3.plist",
  ]
end
