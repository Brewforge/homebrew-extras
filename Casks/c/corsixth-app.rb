cask "corsixth-app" do
  version "0.70.2"
  sha256 "9da01dfc58dad3197748e3a0be99722f6b8dfabee887319a78fa6ad099f93106"

  url "https://github.com/CorsixTH/CorsixTH/releases/download/v#{version}/CorsixTH-#{version}.dmg"
  name "CorsixTH"
  desc "Open source clone of Theme Hospital"
  homepage "https://github.com/CorsixTH/CorsixTH/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "CorsixTH.app"

  zap trash: "~/Library/Saved Application State/com.macsourceports.CorsixTH.savedState"
end
