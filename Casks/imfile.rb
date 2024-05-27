cask "imfile" do
  arch arm: "-arm64"

  version "1.1.0"
  sha256 arm:   "a0fac7e7956ca52b11cca68a6385a6d6cd458543c5e17aad6293297dce2d2076",
         intel: "b644cc83aa98224147ef2942fd49ecfc8cdcebfce9616550fa35caa6850c4178"

  url "https://github.com/imfile-io/imfile-desktop/releases/download/v#{version}/imFile-#{version}#{arch}.dmg",
      verified: "github.com/imfile-io/imfile-desktop/"
  name "imFile"
  desc "Open-source download manager"
  homepage "https://imfile.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "imFile.app"

  zap trash: [
    "~/Library/Application Support/imFile",
    "~/Library/Logs/imFile",
    "~/Library/Preferences/app.imfile.native.plist",
    "~/Library/Saved Application State/app.imfile.native.savedState",
  ]
end
