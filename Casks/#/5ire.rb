cask "5ire" do
  arch arm: "-arm64", intel: ""

  version "0.10.0"
  sha256 arm:   "f51dec4ec038cefe9684af90c2efff6ac236088533b0c2a26ee729401b545b5c",
         intel: "cb0897cd7f62754150224934bf53daf517368f33497e16ad8945f6806f115689"

  url "https://github.com/nanbingxyz/5ire/releases/download/v#{version}/5ire-#{version}#{arch}.dmg",
      verified: "github.com/nanbingxyz/5ire/"
  name "5ire"
  desc "Sleek AI Assistant & MCP Client"
  homepage "https://5ire.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "5ire.app"

  zap trash: [
    "~/Library/Application Support/5ire",
    "~/Library/Logs/5ire",
    "~/Library/Preferences/app.5ire.desktop.plist",
    "~/Library/Saved Application State/app.5ire.desktop.savedState",
  ]
end
