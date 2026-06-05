cask "hermes-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.5.6"
  sha256 arm:   "64ca311727cd20bb0a09cc018a256c13ab856b8284cb1863d1427bc6cf501011",
         intel: "33d4cebbd7ac2b92db0321b2685fcaef37449664db83ba9646accbdd4dba3bcd"

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
