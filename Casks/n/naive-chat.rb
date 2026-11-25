cask "naive-chat" do
  arch arm: "arm64", intel: "x64"

  version "0.21.6"
  sha256 arm:   "e75c7158dc53f9206a4bfea39257a826b469b25dd38fbc13fc489b08774b94de",
         intel: "b03986963967cc2b1a44367cb75e307235332c93855a19ec17fa94dd0254920e"

  url "https://naivechat.com/mac/#{arch}/naive-chat-#{version}-#{arch}.dmg"
  name "NaiveChat"
  desc "Hotkey-first AI chat app"
  homepage "https://naivechat.com/"

  livecheck do
    url "https://naivechat.com/"
    regex(/naive-chat[._-]v?(\d+(?:\.\d+)+)[._-]arm64\.dmg/i)
    strategy :page_match
  end

  depends_on macos: :ventura

  app "NaiveChat.app"

  uninstall quit: "com.jins.naivechat"

  zap trash: [
    "~/Library/Application Support/NaiveChat",
    "~/Library/Caches/com.jins.naivechat",
    "~/Library/Preferences/com.jins.naivechat.plist",
    "~/Library/Saved Application State/com.jins.naivechat.savedState",
    "~/Library/WebKit/com.jins.naivechat",
  ]
end
