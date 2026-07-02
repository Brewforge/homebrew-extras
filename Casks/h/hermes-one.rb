cask "hermes-one" do
  arch arm: "arm64", intel: "x64"

  version "0.7.2"
  sha256 arm:   "7d99654a89cb4350e7a9017f0190100565c2d4ef2f431602642521008e351198",
         intel: "6def6ccbfd04c183f3852e07d51b6d62ead1b942c2272d9d3a8487f9e998037a"

  url "https://github.com/fathah/hermes-desktop/releases/download/v#{version}/hermes-desktop-#{version}-#{arch}.dmg",
      verified: "github.com/fathah/hermes-desktop/"
  name "Hermes Agent"
  desc "Desktop Companion for Hermes Agent"
  homepage "https://hermes-desktop.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Hermes One.app"

  preflight do
    system_command "xattr",
                   args: ["-cr", "#{staged_path}/Hermes One.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nousresearch.hermes.sfl*",
    "~/Library/Preferences/com.nousresearch.hermes.plist",
  ]
end
