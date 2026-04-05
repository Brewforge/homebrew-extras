cask "imfile" do
  arch arm: "-arm64"

  version "2.0.0"
  sha256 arm:   "37ccf188d05ff0537919400f34d1ce57cecb77e1a27a83f6e8baf8bc844572f8",
         intel: "1e5434d12e10ce5e4f4a0cad55e49a707f0b1b905f5639a0908dcd23af218446"

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
