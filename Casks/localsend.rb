cask "localsend" do
  version "1.14.0"
  sha256 "2fb578f10a0e034723c78e67fbd5dabffcf30b30ac641dd3062a74586bac3178"

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
