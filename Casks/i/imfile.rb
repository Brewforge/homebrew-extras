cask "imfile" do
  arch arm: "-arm64"

  version "2.2.1"
  sha256 arm:   "21b43dc91aa28cfb681e8d2565515fa09bdd4f1c5d9d366c702fb9f111ea9e49",
         intel: "dbe1d553232e7f7b597d559d2be6752d96eced9c92208b4b692a00863d6cfd28"

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
