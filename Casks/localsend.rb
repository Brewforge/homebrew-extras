cask "localsend" do
  version "1.15.1"
  sha256 "f86b398d8f76fed7c459f41222cc437b33066b16df180b857c384d5446630a6d"

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
