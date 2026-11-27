cask "gopeed-app" do
  version "2.0.0"
  sha256 "2917947317f5faa1e0dfdd57e593ce33889c93e67c8604a94cd4abe76658ecb0"

  url "https://github.com/GopeedLab/gopeed/releases/download/v#{version}/Gopeed-v#{version}-macos.dmg"
  name "Gopeed"
  desc "High speed downloader that supports all platforms"
  homepage "https://gopeed.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Gopeed.app"

  preflight_steps do
    run "xattr", args: ["-cr", "{{staged_path}}/Gopeed.app"]
  end

  zap trash: [
    "~/Library/Application Scripts/com.gopeed",
    "~/Library/Containers/com.gopeed",
    "~/Library/Preferences/com.gopeed.gopeed.plist",
  ]
end
