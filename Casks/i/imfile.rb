cask "imfile" do
  arch arm: "-arm64"

  version "2.0.6"
  sha256 arm:   "f5d3d497b719b6e78275d25704b12213e140c19c0c29dca3e9f0789359a31841",
         intel: "657a0114f704b32eaf1f72b039c349dce14b8317fd8baf02ce93a69cee515b2a"

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
