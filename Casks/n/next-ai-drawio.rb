cask "next-ai-drawio" do
  arch arm: "-arm64"

  version "0.4.14"
  sha256 arm:   "ddbd325bc0a032a272fb98772bb963b9f11320a0a64b5feade5df73e04d41f97",
         intel: "f29cf5f53805584c566a3344ec69a1e69a6b24818ebda21e9b7d702507944702"

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
