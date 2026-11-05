cask "hiddify" do
  version "5.5.5"
  sha256 "3e8c1d1448f861e5594910e168f11dc39e52ecfb68c03d445f9fb1721032992e"

  url "https://github.com/hiddify/hiddify-next/releases/download/v#{version}/Hiddify-MacOS.dmg"
  name "Hiddify"
  desc "Multi-Platform Auto-Proxy Client"
  homepage "https://hiddify.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Hiddify.app"

  preflight_steps do
    run "xattr", args: ["-cr", "{{staged_path}}/Hiddify.app"]
  end

  zap trash: [
    "~/Library/Application Support/app.hiddify.com",
    "~/Library/Preferences/app.hiddify.com.plist",
    "~/Library/Saved Application State/app.hiddify.com.savedState",
  ]
end
