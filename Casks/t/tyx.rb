cask "tyx" do
  version "0.1.17"
  sha256 "5b38af4accaf39f309773ac9c380a569c77a248b9e7c674d3dcc42efa7b3d4f2"

  url "https://github.com/tyx-editor/TyX/releases/download/v#{version}/TyX_#{version}_aarch64.dmg",
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
