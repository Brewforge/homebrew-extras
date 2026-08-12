cask "imfile" do
  arch arm: "-arm64"

  version "2.3.2"
  sha256 arm:   "79eee415aec4e7771abdf0e36a9f912f8589aa93dac9b793535cdf5089e6b482",
         intel: "0963e58aae15d25930dce98a9260dba4d5426819ff9e3d72324a84164a3c76ef"

  url "https://github.com/imfile-io/imfile-desktop/releases/download/v#{version}/imFile-#{version}#{arch}.dmg",
      verified: "github.com/imfile-io/imfile-desktop/"
  name "imFile"
  desc "Open-source download manager"
  homepage "https://imfile.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "imFile.app"

  zap trash: [
    "~/Library/Application Support/imFile",
    "~/Library/Logs/imFile",
    "~/Library/Preferences/app.imfile.native.plist",
    "~/Library/Saved Application State/app.imfile.native.savedState",
  ]
end
