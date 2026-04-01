cask "imfile" do
  arch arm: "-arm64"

  version "1.1.4"
  sha256 arm:   "b8aa5347b121f237e2d09fd6cd97dc919eacbf7483a639d698f8ebf161a72d9a",
         intel: "d0713801b31f66c4eb7a911767040aad058d85475caa9ad4550f0da6d08de63c"

  url "https://github.com/imfile-io/imfile-desktop/releases/download/imFile-#{version}/imFile-#{version}#{arch}.dmg",
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
