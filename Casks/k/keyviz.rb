cask "keyviz" do
  version "2.1.1"
  sha256 "729700b4c738b74f52eeca6e8b0f1371de7c314861682bb3786d3b42e350d9bb"

  url "https://github.com/mulaRahul/keyviz/releases/download/v#{version}/keyviz_#{version}_macos.dmg"
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
