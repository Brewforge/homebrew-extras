cask "next-ai-drawio" do
  arch arm: "-arm64"

  version "0.4.16"
  sha256 arm:   "d33c4ea32c4a51f6e6d0e1f8a322b4c751292fd84ae0b6ebd198920586fccbe9",
         intel: "c829735aac8c9be226a4e79f7b80d3e8d4fc85e3e40aa372ff7f23b1fb08f029"

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
  depends_on macos: :monterey

  app "Next AI Draw.io.app"

  zap trash: [
    "~/Library/Application Support/next-ai-draw-io",
    "~/Library/Preferences/com.nextaidrawio.app.plist",
  ]
end
