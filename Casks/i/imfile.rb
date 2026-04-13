cask "imfile" do
  arch arm: "-arm64"

  version "2.0.5"
  sha256 arm:   "df792e55bfeae23679ba0bb1b53b9857067b91eaf0329dfe7e4c58372f2af88c",
         intel: "e7abf89f4e782963ee8423a36e819b00e10ff319fd7980246ca91976f5c21838"

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
