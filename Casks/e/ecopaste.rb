cask "ecopaste" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "fde655338768c73f4e136ace5abbd4bf9fa133af1d2fe8b82473cdb79329b2d2",
     intel: "ddd3eeb89626335f9ab0552b4021df62f2d972580386f015301d8e81d6e38e42"
  
  mirror = "https://mirror.ghproxy.com/"
  origin = "https://github.com/EcoPasteHub/EcoPaste/releases/latest/download/EcoPaste_#{arch}.app.tar.gz"
  
  url "#{mirror}#{origin}",
    verified: "mirror.ghproxy.com/"
  name "EcoPaste"
  desc "Open source clipboard management tools for Windows, Macos and Linux(x11)"
  homepage "https://github.com/EcoPasteHub/EcoPaste"
  
  livecheck do
    url origin.to_s
    strategy :github_latest
  end
  
  auto_updates true

  app "EcoPaste.app"

  zap trash: ""
end