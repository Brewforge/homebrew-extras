cask "imfile" do
  arch arm: "-arm64"

  version "2.1.0"
  sha256 arm:   "a33b68292ca16f8963b5f478b1ed198f660f557a2c1b134eaa3300a0bf20c470",
         intel: "0a37ed9c299675ec374287554abeb1861f02746e8b321936d2f972b77e8e151e"

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
