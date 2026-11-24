cask "keyviz" do
  version "2.1.2"
  sha256 "86bd7afd9a0a310652fa6ac573798bfcec985637df22284eebb6f36a4e902cbe"

  url "https://github.com/mulaRahul/keyviz/releases/download/v#{version}/keyviz_#{version}_macos.dmg"
  name "keyviz"
  desc "Visualize your keystrokes && mouse actions in real-time"
  homepage "https://github.com/mulaRahul/keyviz"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "keyviz.app"

  zap trash: [
    "/private/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.example.keyviz",
    "~/Library/Application Scripts/com.example.keyviz",
    "~/Library/Containers/com.example.keyviz",
  ]
end
