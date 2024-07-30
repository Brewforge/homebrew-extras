cask "localsend" do
  version "1.15.3"
  sha256 "32dad2bac1037ad42cc2172e41c5bda810da6ddc44546a45a84f9614cdca52c2"

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
