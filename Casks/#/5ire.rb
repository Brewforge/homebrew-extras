cask "5ire" do
  arch arm: "-arm64", intel: ""

  version "0.11.0"
  sha256 arm:   "379f44f7081adc4764881e68b709ce7871331d4e18a8feb4082c2f500cb75ca0",
         intel: "962aac2b68f75131caed9e4bed2b63fd443bb6ce4547f516295e3e0de9d7e93b"

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
