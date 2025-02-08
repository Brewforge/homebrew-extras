cask "5ire" do
  arch arm: "-arm64", intel: ""

  version "0.9.5"
  sha256 arm:   "3b41b9b8e63fb342a45986a8e7ee491970b1794b58835b2052769bd59dcaddd2",
         intel: "c514109f5935dd972040f26d38f4e6a55ddc50e0480e0355f6d049557703a56e"

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
