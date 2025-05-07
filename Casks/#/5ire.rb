cask "5ire" do
  arch arm: "-arm64", intel: ""

  version "0.10.1"
  sha256 arm:   "91632dd596d5ec3a08cff5708dcf682e31a6526495175203c0e468436539b497",
         intel: "86f752146232ac76f879a231b7012dd1ecc9c69ff89c87fd0614c653929e623a"

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
