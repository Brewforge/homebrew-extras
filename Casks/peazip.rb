cask "peazip" do
  version "9.8.0"
  sha256 "5fba1cc7f69f1a445e7fea04fbf07e28e23189d7ba301451da3d49368e6c77c1"

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

  postflight do
    system_command "/usr/bin/open", args: ["#{staged_path}/macOS service menus/PeaZip, add to archive.workflow"]
    system_command "/usr/bin/open",
                   args: ["#{staged_path}/macOS service menus/PeaZip, extract here (smart new folder).workflow"]
    system_command "/usr/bin/open", args: ["#{staged_path}/macOS service menus/PeaZip, extract....workflow"]
    system_command "/usr/bin/open", args: ["#{staged_path}/macOS service menus/PeaZip, open file or folder.workflow"]
  end

  zap trash: [
    "~/.config/peazip",
    "~/Library/Preferences/com.company.peazip.plist",
    "~/Library/Saved Application State/com.company.peazip.savedState",
  ]
end
