cask "next-ai-drawio" do
  arch arm: "-arm64"

  version "0.5.0"
  sha256 arm:   "56070a4a1992f86125a6520dc93983c18324eabb4df744623b8d5db4f4bb792d",
         intel: "a5cc433b6414d177916d88034cb6057f0d069f4073429c0e56ba9ef1060f3c42"

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
