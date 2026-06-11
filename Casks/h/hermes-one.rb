cask "hermes-one" do
  arch arm: "arm64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "d1aa06556407a2cdc19748fe29438868323a2eef4538fa43b1b83e3e832644e5",
         intel: "7eb1181791b64d9fa1d3c565bcb3f4a6f05a4f7e3048a5c7111b5c9781074424"

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
