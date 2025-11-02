cask "tyx" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.13"
  sha256 arm:   "589345194252e5f91fa8665af44c9dc1af82fb54981219582b04a3526558ce52",
         intel: "24362d8008a5353802fd77b04bac21bf7f1ae59884b326dbe90ff4eeb93a8eed"

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
