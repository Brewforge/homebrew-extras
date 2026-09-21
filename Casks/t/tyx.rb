cask "tyx" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.19"
  sha256 arm:   "a44b08c758c4429bb77afdcbb62b4487e64bd12c4ba42f1ea7b8e8642b8fb27c",
         intel: "d7c53feaaffc9b69217b08fde93a2cc80a746636c01f9783c26e00301fdc6425"

  url "https://github.com/tyx-editor/TyX/releases/download/v#{version}/TyX_#{version}_#{arch}.dmg"
  name "TyX"
  desc "LyX-like experience rewritten for Typst and the modern era"
  homepage "https://tyx-editor.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "TyX.app"

  zap trash: [
    "/~/Library/Caches/com.tyx-editor.tyx",
    "/~/Library/Preferences/com.tyx-editor.tyx.plist",
    "/~/Library/WebKit/com.tyx-editor.tyx",
  ]
end
