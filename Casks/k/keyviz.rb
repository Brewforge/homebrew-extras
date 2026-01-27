cask "keyviz" do
  version "2.0.0a3"
  sha256 "258c7b3d297942c2a7f7b6579884915b606fc4b3867fea86637e67ae04734f04"

  url "https://github.com/mulaRahul/keyviz/releases/download/v#{version}/keyviz-#{version}-macos.dmg"
  name "keyviz"
  desc "Visualize your keystrokes && mouse actions in real-time"
  homepage "https://github.com/mulaRahul/keyviz"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "keyviz.app"

  zap trash: [
    "/private/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.example.keyviz",
    "~/Library/Application Scripts/com.example.keyviz",
    "~/Library/Containers/com.example.keyviz",
  ]
end
