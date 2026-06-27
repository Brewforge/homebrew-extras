cask "hermes-one" do
  arch arm: "arm64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "49f1bbeb70744171049fbf6d87d0983424f796b8828c1eeca615f67af7f60c76",
         intel: "dc24391676804b9dc075bb9ffc398f608d14249ec5689bcef7904e375bebbbed"

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
