cask "tyx" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.12"
  sha256 arm:   "c2c84d753ff146d0a13596857816a92fefe6f161375e1472307cb006316989f2",
         intel: "adfa8efe6a3444efb98b52a5e7df2b8c40dcc5a94a8255b6a80e5b3ed900cc41"

  url "https://github.com/tyx-editor/TyX/releases/download/v#{version}/TyX_#{version}_#{arch}_darwin.dmg",
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
