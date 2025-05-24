cask "tyx" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.13"
  sha256 arm:   "dd9c48f8e881180ad63d7cdcdd67279c1e91970524ea9c1ddad955362f7c1bf5",
         intel: "560609f665e22c747223b017317aaafb596ed6105bfae6c54c204b971e401ddb"

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
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.tyx-editor.tyx",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/com.tyx-editor.tyx",
    "/~/Library/Caches/com.tyx-editor.tyx",
    "/~/Library/Preferences/com.tyx-editor.tyx.plist",
    "/~/Library/WebKit/com.tyx-editor.tyx",
  ]
end
