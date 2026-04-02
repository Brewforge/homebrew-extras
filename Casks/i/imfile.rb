cask "imfile" do
  arch arm: "-arm64"

  version "1.2.0"
  sha256 arm:   "a30ba60f4c9a0a354a816e2762517ab6e61b91b04745a1b8f2d537c1b15d7c1d",
         intel: "f0b798f09a9c3443c038d7e62e54b0708588ed690800c0ee98919f380c8021e7"

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
