cask "5ire" do
  arch arm: "-arm64", intel: ""

  version "0.9.9"
  sha256 arm:   "2e2bc801fc8dc25e0eca604326de73db7985edaf6e1ae8dc2742b98b60c2b3cb",
         intel: "32039be2944ccc32190f7898428622e8fa06088458a0e96c6f8e7931e443a810"

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
