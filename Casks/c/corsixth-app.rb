cask "corsixth-app" do
  version "0.69.2"
  sha256 "e0fb7ddbb32fa514fbbb7c73e19204b5ea69bd190289f5893bc32d1343a18897"

  url "https://github.com/CorsixTH/CorsixTH/releases/download/v#{version}/CorsixTH-#{version}.dmg"
  name "CorsixTH"
  desc "Open source clone of Theme Hospital"
  homepage "https://github.com/CorsixTH/CorsixTH/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CorsixTH.app"

  zap trash: "~/Library/Saved Application State/com.macsourceports.CorsixTH.savedState"
end
