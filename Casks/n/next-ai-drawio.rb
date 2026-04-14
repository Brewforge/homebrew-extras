cask "next-ai-drawio" do
  arch arm: "-arm64"

  version "0.4.15"
  sha256 arm:   "af39f80ac87bbcdcfab465b31c2189cdacbcd9fec264975ed5e7974855a6d8d6",
         intel: "7fb09aad7bfef2586ae3f7f8bab60bed480af3b81d13459f48e811da26b7dee3"

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
