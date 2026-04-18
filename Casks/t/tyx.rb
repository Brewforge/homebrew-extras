cask "tyx" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.18"
  sha256 arm:   "3795544330c26760f4ea144a8a4edc8aa04908ccab39cdc3d8db80cb8dd9d53f",
         intel: "b58a945337fc7fa3a57df0b6404dc09fe10d9b6a4b83f7ec95b366d2e778229f"

  url "https://github.com/tyx-editor/TyX/releases/download/v#{version}/TyX_#{version}_#{arch}.dmg",
      verified: "github.com/tyx-editor/TyX/"
  name "TyX"
  desc "LyX-like experience rewritten for Typst and the modern era"
  homepage "https://tyx-editor.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "TyX.app"

  zap trash: [
    "/~/Library/Caches/com.tyx-editor.tyx",
    "/~/Library/Preferences/com.tyx-editor.tyx.plist",
    "/~/Library/WebKit/com.tyx-editor.tyx",
  ]
end
