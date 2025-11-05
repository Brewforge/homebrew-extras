cask "imfile" do
  arch arm: "-arm64"

  version "1.1.2"
  sha256 arm:   "2db3324abda9aa072dab0eb6d38cf21329ad16de6b203feca74d42f5b398ee32",
         intel: "aa46960c8766a14cfc8c55571dcd407d0349af8de7f0f281ff6a15d4ac5bf7f0"

  url "https://github.com/imfile-io/imfile-desktop/releases/download/v#{version}/imFile-#{version}#{arch}.dmg",
      verified: "github.com/imfile-io/imfile-desktop/"
  name "imFile"
  desc "Open-source download manager"
  homepage "https://imfile.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "imFile.app"

  zap trash: [
    "~/Library/Application Support/imFile",
    "~/Library/Logs/imFile",
    "~/Library/Preferences/app.imfile.native.plist",
    "~/Library/Saved Application State/app.imfile.native.savedState",
  ]
end
