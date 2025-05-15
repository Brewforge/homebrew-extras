cask "5ire" do
  arch arm: "-arm64", intel: ""

  version "0.11.1"
  sha256 arm:   "d461710a1bfae9588f37f5db9b3c5d4bfa9fad7985efad3717673366413dcf81",
         intel: "df9707c31d466eb6e87347009218ff7ab5644f0b86ad63b4fbc8cb9f8651264b"

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
