cask "localsend" do
  version "1.15.4"
  sha256 "654d9a5d934aa34d539d7347d1efabd25e09e472082e619a9b74f8fba19a780e"

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
