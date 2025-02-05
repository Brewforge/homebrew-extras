cask "hiddify" do
  version "2.0.5"
  sha256 "71d4314ef0ce9d3bffb423a438ebeb9bae9ec8decfe0e17f5e6327201849e138"

  url "https://github.com/hiddify/hiddify-next/releases/download/v#{version}/Hiddify-MacOS.dmg"

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
