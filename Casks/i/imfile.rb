cask "imfile" do
  arch arm: "-arm64"

  version "2.0.3"
  sha256 arm:   "7581090a11fd816b72b168208133ade9a5021c9ff1956b1c00c602c33ac1686f",
         intel: "1f4183fc8856d4de07f573b2d82edfac22d5cd09adf8f182aab976242ebec72a"

  url "https://github.com/imfile-io/imfile-desktop/releases/download/v#{version}/imFile-#{version}#{arch}.dmg",
      verified: "github.com/imfile-io/imfile-desktop/"
  name "imFile"
  desc "Open-source download manager"
  homepage "https://imfile.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "imFile.app"

  zap trash: [
    "~/Library/Application Support/imFile",
    "~/Library/Logs/imFile",
    "~/Library/Preferences/app.imfile.native.plist",
    "~/Library/Saved Application State/app.imfile.native.savedState",
  ]
end
