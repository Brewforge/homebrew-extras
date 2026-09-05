cask "imfile" do
  arch arm: "-arm64"

  version "2.3.4"
  sha256 arm:   "1cb410aa683caea17da3d74467949f59e230276465ea4fd1efbf6134b4a783ff",
         intel: "ff3731599e4f70387852d548f7192daa708ca3789f82e0bfa8d33a6c846e355e"

  url "https://github.com/imfile-io/imfile-desktop/releases/download/v#{version}/imFile-#{version}#{arch}.dmg"
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
