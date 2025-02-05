cask "5ire" do
  arch arm: "-arm64", intel: ""

  version "0.9.4"
  sha256 arm:   "61ae4113d6bebf40e50a23ffdd4b79d1b63431c86cc6191927a6cf1cbbd67644",
         intel: "5422dc1c1184e5a71931196e3ba36ee6572288033c92c24484e4923c56cf1db2"

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
