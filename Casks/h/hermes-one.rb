cask "hermes-one" do
  arch arm: "arm64", intel: "x64"

  version "0.7.8"
  sha256 arm:   "809f426e04e865d1119ea43466f5f99299b8740a18c5031abd52b06ce31f424a",
         intel: "04f6d8f07db01a32774f37487b6f0da669fbb17e96326072c029ad287b563f07"

  url "https://github.com/fathah/hermes-desktop/releases/download/v#{version}/hermes-desktop-#{version}-#{arch}.dmg"
  name "Hermes Agent"
  desc "Desktop Companion for Hermes Agent"
  homepage "https://hermes-desktop.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Hermes One.app"

  preflight_steps do
    run "xattr", args: ["-cr", "{{staged_path}}/Hermes One.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nousresearch.hermes.sfl*",
    "~/Library/Preferences/com.nousresearch.hermes.plist",
  ]
end
