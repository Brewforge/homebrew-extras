cask "mineru" do
  version "0.14.1"
  sha256 "79daaa76d76ef1fe84c76338f899fa0ab514c6058484e3feba513fe8ea9b5f83"

  url "https://webpub.shlab.tech/MinerU/latest/mac_arm/MinerU-#{version}-arm64.dmg",
      verified: "webpub.shlab.tech/"
  name "mineru"
  desc "Intelligent Document Parsing Engine for LLMs and Agents"
  homepage "https://mineru.net/"

  livecheck do
    url "https://webpub.shlab.tech/MinerU/latest/mac_arm/latest.yml?a=1"
    regex(/version: (\\d.+)/i)
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "MinerU.app"

  preflight do
    system_command "xattr",
                   args: ["-cr", "#{staged_path}/MinerU.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.app.sfl*",
    "~/Library/Application Support/MinerU",
    "~/Library/Logs/MinerU",
    "~/Library/Preferences/com.electron.app.plist",
    "~/Library/Services/MinerU.workflow",
  ]
end
