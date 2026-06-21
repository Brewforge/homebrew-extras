cask "hermes-one" do
  arch arm: "arm64", intel: "x64"

  version "0.6.33"
  sha256 arm:   "0e943eca57f04489805c762521077a1bcae6f8c270c658e49bce4e937d0caca2",
         intel: "4f8475ecead4f42127e65d3851037bd9d083935f8bb18e25ca72858ae2f95b96"

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
