cask "hermes-one" do
  arch arm: "arm64", intel: "x64"

  version "0.7.9"
  sha256 arm:   "737fadab564f2585c4c41958356016a6ef58044288f83b92437c7e74337ea7eb",
         intel: "62e3a9d5212ae2c24c12c5d533d7f6dd516740645090c671bb4f997ff553f0ab"

  url "https://github.com/fathah/hermes-desktop/releases/download/v#{version}/hermes-desktop-#{version}-#{arch}.dmg"
  name "Hermes Agent"
  desc "Desktop Companion for Hermes Agent"
  homepage "https://hermesone.org/"

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
