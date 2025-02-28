cask "5ire" do
  arch arm: "-arm64", intel: ""

  version "0.9.7"
  sha256 arm:   "0fd86fd2a583ace7133cbb0dbed96a4896f85aae9e3f7970648d6ae362fa1b50",
         intel: "24408d7e28beda53b9f5b64f48c28214052ba264d802979e0130238c47b2f026"

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
