cask "hiddify" do
  version "5.9.15"
  sha256 "5d095a63af1130535f3f2dc50342242df2c2ea5bc153151c8ef79923cc6cbd3f"

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
