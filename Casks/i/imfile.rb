cask "imfile" do
  arch arm: "-arm64"

  version "2.2.0"
  sha256 arm:   "fc0528eed75869e8a0025664bd1d0a5e48a93d4d49ef247c77b87c1df8fad5b7",
         intel: "d88e07710752cd51e39974373c5a84610fee146dc62cb9292a237b4b22d34902"

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
