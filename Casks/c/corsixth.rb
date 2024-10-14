cask "corsixth" do
  arch arm: "arm64", intel: "x86_64"

  version "0.68.0"
  sha256 arm:   "60b1a94f94e0aaf2cbd2dcd865287cf2332610e474a851681c17a8b586e5ae03",
         intel: "523c9ffa4eda0a8657000d708acd733dbb4fc094cf0804a1cf21290706c8a97e"

  url "https://github.com/CorsixTH/CorsixTH/releases/download/v#{version}/CorsixTH-#{version}-#{arch}.dmg"
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
