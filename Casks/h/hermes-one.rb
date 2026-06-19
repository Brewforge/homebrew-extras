cask "hermes-one" do
  arch arm: "arm64", intel: "x64"

  version "0.6.2"
  sha256 arm:   "9f5bd85599e44931183877b6124e1736e3a83e85a8a76b2953cfd361485e8c4a",
         intel: "e828ea684353e770792db89a211ca17881f666c4b7d0861f8ab5d9f6c149431b"

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
