cask "5ire" do
  arch arm: "-arm64", intel: ""

  version "0.9.8"
  sha256 arm:   "625f1e9427644e5a7cc605ab41c6f9e927ec14c3bd4767466751c1e853aca2de",
         intel: "ae33427391199c136acd0f4958977a54defa6f48b66f56f7a2a2982f182c81fc"

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
