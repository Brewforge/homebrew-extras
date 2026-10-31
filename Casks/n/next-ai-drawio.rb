cask "next-ai-drawio" do
  arch arm: "-arm64"

  version "0.5.1"
  sha256 arm:   "050213bc49893d542bf077312aa2f987cb72a7d5a5290727aa62157947fb47de",
         intel: "b327f1e2c218954c5ce38d635cf5a3b79714eb9f2b0837552bf22e0c215a017a"

  url "https://github.com/DayuanJiang/next-ai-draw-io/releases/download/v#{version}/Next-AI-Draw.io-#{version}#{arch}.dmg"
  name "Next AI Draw.io"
  desc "AI-Powered Diagram Creation Tool - Chat, Draw, Visualize"
  homepage "https://next-ai-drawio.jiang.jp/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Next AI Draw.io.app"

  zap trash: [
    "~/Library/Application Support/next-ai-draw-io",
    "~/Library/Preferences/com.nextaidrawio.app.plist",
  ]
end
