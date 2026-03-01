cask "cc-switch" do
  version "3.11.1"
  sha256 "66b2c600d880c1343cd89a89c4ffbc5722162ff974bd5e16ea5f2b949974f05d"

  url "https://github.com/farion1231/cc-switch/releases/download/v#{version}/CC-Switch-v#{version}-macOS.zip"
  name "CC Switch"
  desc "Configuration manager for Claude Code, Codex, Gemini and OpenCode"
  homepage "https://github.com/farion1231/cc-switch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "CC Switch.app"

  zap trash: [
    "~/.cc-switch",
    "~/Library/Application Support/com.ccswitch.desktop",
    "~/Library/Caches/com.ccswitch.desktop",
    "~/Library/Preferences/com.ccswitch.desktop.plist",
    "~/Library/Saved Application State/com.ccswitch.desktop.savedState",
    "~/Library/WebKit/com.ccswitch.desktop",
  ]
end
