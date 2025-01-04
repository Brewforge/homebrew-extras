cask "peazip" do
  version "10.2.0"
  sha256 "79a1947f88cf98c958f508247fa38ebf2e0b08a4a42e653f4aad465f63c5c82d"

  url "https://github.com/peazip/PeaZip/releases/download/#{version}/peazip-#{version}.DARWIN.aarch64.dmg",
      verified: "github.com/peazip/PeaZip/"
  name "Peazip"
  desc "Free Zip/Unzip software and Rar file extractor"
  homepage "https://peazip.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "PeaZip.app"

  service_menu = "#{staged_path}/PeaZip.app/Contents/Resources/share/batch/macOS service menus/PeaZip"
  postflight do
    system_command "/usr/bin/open",
                   args: ["#{service_menu}, add to archive.workflow"]
    system_command "/usr/bin/open",
                   args: ["#{service_menu}, extract here (smart new folder).workflow"]
    system_command "/usr/bin/open",
                   args: ["##{service_menu}, extract....workflow"]
    system_command "/usr/bin/open",
                   args: ["#{service_menu}, open file or folder.workflow"]
  end

  zap trash: [
    "~/.config/peazip",
    "~/Library/Preferences/com.company.peazip.plist",
    "~/Library/Saved Application State/com.company.peazip.savedState",
  ]
end
