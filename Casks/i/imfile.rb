cask "imfile" do
  arch arm: "-arm64"

  version "2.0.4"
  sha256 arm:   "624a3bd3a9c8da714d7ab15546670624c61242c0c65b93cb4f70071fd2b37aa3",
         intel: "dbeae8a257ab0977e7e7f6ba1578fa023d6cbf868aba5735f2de9c8135a646ab"

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
