cask "hiddify" do
  version "4.1.1"
  sha256 "2019c85aef259002909a088be7bfb28032bf9ce7f932ffa597fdfe3b4cbff914"

  url "https://github.com/hiddify/hiddify-next/releases/download/v#{version}/Hiddify-MacOS.dmg",
      verified: "github.com/hiddify/hiddify-next/"
  name "Hiddify"
  desc "Multi-Platform Auto-Proxy Client"
  homepage "https://hiddify.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Hiddify.app"

  preflight do
    system_command "xattr",
                   args: ["-cr", "#{staged_path}/Hiddify.app"]
  end

  zap trash: [
    "~/Library/Application Support/app.hiddify.com",
    "~/Library/Preferences/app.hiddify.com.plist",
    "~/Library/Saved Application State/app.hiddify.com.savedState",
  ]
end
