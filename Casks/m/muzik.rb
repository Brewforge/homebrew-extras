cask "muzik" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "dbdae8e6f99405c2da0ac553192fdab8ec0128871ce7ab7039ce99a212b504de",
         intel: "88c4086e5258e02afe13d65b7b98f3674949f8a4619b334d38d680c6a6328c2c"

  url "https://github.com/muzik-apps/muzik-offline/releases/download/v#{version}/muzik-offline_#{version}_#{arch}.dmg",
      verified: "github.com/muzik-apps/muzik-offline/"
  name "muzik"
  desc "Cross platform, local music player"
  homepage "https://muzik-apps.github.io/muzik-web/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "muzik-offline.app"

  zap trash: [
    "~/Library/Application Support/com.muzik-offline.dev",
    "~/Library/Caches/com.muzik-offline.dev",
    "~/Library/HTTPStorages/com.muzik-offline.dev",
    "~/Library/Preferences/com.muzik-offline.dev.plist",
    "~/Library/WebKit/com.muzik-offline.dev",
  ]
end
