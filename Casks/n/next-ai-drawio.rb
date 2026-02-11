cask "next-ai-drawio" do
  arch arm: "-arm64"

  version "0.4.12"
  sha256 arm:   "40cfc918695ec6ff5c0a805ec2ee685275c5aa74d473107965cf0916b0fef96c",
         intel: "d3dcf2c883dbcf7830a8ccccd7e29806b3d997ce1aaff11d933611f03c9e9fc0"

  url "https://github.com/DayuanJiang/next-ai-draw-io/releases/download/v#{version}/Next-AI-Draw.io-#{version}#{arch}.dmg",
      verified: "github.com/DayuanJiang/next-ai-draw-io/"
  name "Next AI Draw.io"
  desc "AI-Powered Diagram Creation Tool - Chat, Draw, Visualize"
  homepage "https://next-ai-drawio.jiang.jp/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Next AI Draw.io.app"

  zap trash: [
    "~/Library/Application Support/next-ai-draw-io",
    "~/Library/Preferences/com.nextaidrawio.app.plist"
  ]
end
