cask "tyx" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.16"
  sha256 arm:   "b822e4b57722666f260fe48fcce1687935375625b750e746cc292c3fdc8f7f76",
         intel: "8599509cf6e004a4d5f6301d2bad4997192aca19e5b42064d9d046f2ab54f806"

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
