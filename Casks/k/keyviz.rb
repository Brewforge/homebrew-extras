cask "keyviz" do
  version "2.1.0"
  sha256 "2b1f0e18a9435d5f6dac4d5be3c4fcc1d08a53591757cc0178736298c2632c8d"

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
