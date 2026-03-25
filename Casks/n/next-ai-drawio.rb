cask "next-ai-drawio" do
  arch arm: "-arm64"

  version "0.4.13"
  sha256 arm:   "8df02259b1b4310377ef0eb3336f30c95fc949396cd71c9aa8f5f8236931e889",
         intel: "58d0625898777b32aab3f39f44686399c32eb6cd33950dcc47a2773b7b02a817"

  url "https://github.com/DayuanJiang/next-ai-draw-io/releases/download/v#{version}/Next-AI-Draw.io-#{version}#{arch}.dmg",
      verified: "github.com/DayuanJiang/next-ai-draw-io/"
  name "Next AI Draw.io"
  desc "AI-Powered Diagram Creation Tool - Chat, Draw, Visualize"
  homepage "https://next-ai-drawio.jiang.jp/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Next AI Draw.io.app"

  zap trash: [
    "~/Library/Application Support/next-ai-draw-io",
    "~/Library/Preferences/com.nextaidrawio.app.plist",
  ]
end
