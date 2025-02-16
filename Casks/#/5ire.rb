cask "5ire" do
  arch arm: "-arm64", intel: ""

  version "0.9.6"
  sha256 arm:   "57eaaab4674ffc8a213bc270954b9ebda0478011766bccc6135193f92895b25b",
         intel: "a395931e2af80b355d4b0435b62687a9e85a25074d02fd1b9dee96fc3792d06b"

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
