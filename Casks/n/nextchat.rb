cask "nextchat" do
  version "2.16.0"
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
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/dev.nextchat.app",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/dev.nextchat.app",
    "~/Library/Application Support/dev.nextchat.app",
    "~/Library/Caches/dev.nextchat.app",
    "~/Library/WebKit/dev.nextchat.app",
  ]
end
