cask "hermes-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.5.5"
  sha256 arm:   "3081c057b25c4c55f42a06465d92bd415fb168ddb8ab95433f3a4a305a3ef695",
         intel: "69d1125c82ab7e146efab25023d214b0b8076db72442ab8f8b309864deec2442"

  url "https://github.com/fathah/hermes-desktop/releases/download/v#{version}/hermes-desktop-#{version}-#{arch}.dmg",
      verified: "github.com/fathah/hermes-desktop/"
  name "Hermes Agent"
  desc "Desktop Companion for Hermes Agent"
  homepage "https://hermes-desktop.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Hermes Agent.app"

  preflight do
    system_command "xattr",
                   args: ["-cr", "#{staged_path}/Hermes Agent.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nousresearch.hermes.sfl*",
    "~/Library/Preferences/com.nousresearch.hermes.plist",
  ]
end
