cask "oculante" do
  arch intel: "_intel"

  version "0.9.6"
  sha256 arm:   "8ddf2bf85bd804d6648ea82ded24d7f40e1040e00d78e0863f4ef9c1a9de810a",
         intel: "e318a582d91da6af8d818fdc6152cff2080e99a64302d198e88678add8be3b53"

  url "https://github.com/woelper/oculante/releases/download/#{version}/oculante_mac#{arch}.zip"
  name "Oculante"
  desc "Fast and simple image viewer / editor for many operating systems"
  homepage "https://github.com/woelper/oculante"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Oculante.app"

  zap trash: [
    "~/Library/Application Support/oculante",
    "~/Library/Saved Application State/com.github.woelper.oculante.savedState",
  ]
end
