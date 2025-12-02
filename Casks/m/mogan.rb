cask "mogan" do
  arch arm: "arm", intel: "x64"

  version "2025.2.0"
  sha256 arm:   "5e2564d8f6bdd5e6a88e286c82c5a925d5519e2dc66165e2774a34bae6851c97",
         intel: "bb633c872187de6d93e60dbf05fe0da2dbea08475cc67e7406e401e150d021e8"

  url "https://github.com/XmacsLabs/mogan/releases/download/v#{version}/MoganSTEM-v#{version}-#{arch}.dmg",
      verified: "github.com/XmacsLabs/mogan/releases/download/"
  name "Mogan STEM"
  desc "Structured STEM suite"
  homepage "https://mogan.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "MoganSTEM.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/app.mogan",
    "~/Library/Application Support/XmacsLabs",
    "~/Library/Preferences/app.mogan.plist",
  ]
end
