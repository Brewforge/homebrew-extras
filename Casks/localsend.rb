cask "localsend" do
  version "1.13.1"
  sha256 "602cba3659843ec385b48676ee63980e730f775b63dd83b66f034374cdcafee6"

  url "https://github.com/localsend/localsend/releases/download/v#{version}/LocalSend-#{version}.dmg",
      verified: "github.com/localsend/localsend/"
  name "LocalSend"
  desc "Share files to nearby devices"
  homepage "https://localsend.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "LocalSend.app"

  zap trash: [
    "~/Library/Preferences/org.localsend.localsendApp",
    "~/Library/Saved Application State/org.localsend.localsendApp.savedState",
  ]
end
