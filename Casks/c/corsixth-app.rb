cask "corsixth-app" do
  version "0.69.0"
  sha256 "5afa1f71a660e6a4e91662aea9bb8cf2f1227e1fe7dec6b636678ca7ef6e9a4f"

  url "https://github.com/CorsixTH/CorsixTH/releases/download/v#{version}/CorsixTH-#{version}.dmg"
  name "CorsixTH"
  desc "Open source clone of Theme Hospital"
  homepage "https://github.com/CorsixTH/CorsixTH/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CorsixTH.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.macsourceports.CorsixTH",
    "~/Library/Saved Application State/com.macsourceports.CorsixTH.savedState",
  ]
end
