cask "nextchat" do
  version "2.16.1"
  sha256 :no_check

  url "https://file.nextchat.club/app/macos-latest.dmg"
  name "NextChat"
  desc "Cross-platform ChatGPT/Gemini UI"
  homepage "https://nextchat.club/download"

  livecheck do
    url "https://github.com/ChatGPTNextWeb/NextChat"
    strategy :github_latest
  end

  app "NextChatAI.app"

  zap trash: [
    "~/Library/Application Support/dev.nextchat.app",
    "~/Library/Caches/dev.nextchat.app",
    "~/Library/WebKit/dev.nextchat.app",
  ]
end
