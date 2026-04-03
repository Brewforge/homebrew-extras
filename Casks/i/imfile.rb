cask "imfile" do
  arch arm: "-arm64"

  version "1.2.3"
  sha256 arm:   "8203d4f341d69eeaac03130d0726713b0a0f96069912c2e0f784598d62f504c7",
         intel: "98f620e3c47dade42097d52fc2939e2807f9715f2b95c80cb78fbe14853b829f"

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
