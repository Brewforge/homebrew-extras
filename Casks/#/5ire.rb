cask "5ire" do
  arch arm: "-arm64", intel: ""

  version "0.9.3"
  sha256 arm:   "5299ea08af05a439ab3a5925dfa134b17084b09eabb83ae99adc0bc0523b2e8a",
         intel: "1699ca2777ae2cbe73b6620e67015be6b1b30d4d021f939a504ef6827c7d4248"

  url "https://github.com/nanbingxyz/5ire/releases/download/v#{version}/5ire-#{version}#{arch}.dmg"
  name "5ire"
  desc "Sleek AI Assistant & MCP Client"
  homepage "https://5ire.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "5ire.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "~/Library/Application Support/5ire",
    "~/Library/Logs/5ire",
    "~/Library/Preferences/app.5ire.desktop.plist",
    "~/Library/Saved Application State/app.5ire.desktop.savedState",
  ]
end
