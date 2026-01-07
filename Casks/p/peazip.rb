cask "peazip" do
  version "10.8.0"
  sha256 "c94a5678b6bbe7c69ae5dba2193d2879efdeeef8a82900edd9507884c4f1be7a"

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
  depends_on macos: ">= :big_sur"

  app "PeaZip.app"

  service_menu = "#{staged_path}/PeaZip.app/Contents/Resources/share/batch/macOS service menus"
  postflight do
    system_command "/usr/bin/open",
                   args: ["#{service_menu}/PeaZip, add to archive.workflow"]
    system_command "/usr/bin/open",
                   args: ["#{service_menu}/PeaZip, add to Brotli.workflow"]
    system_command "/usr/bin/open",
                   args: ["#{service_menu}/PeaZip, add to BZ2.workflow"]
    system_command "/usr/bin/open",
                   args: ["#{service_menu}/PeaZip, add to GZ.workflow"]
    system_command "/usr/bin/open",
                   args: ["#{service_menu}/PeaZip, add to TAR.workflow"]
    system_command "/usr/bin/open",
                   args: ["#{service_menu}/PeaZip, add to XZ.workflow"]
    system_command "/usr/bin/open",
                   args: ["#{service_menu}/PeaZip, add to Zstd.workflow"]
    system_command "/usr/bin/open",
                   args: ["#{service_menu}/PeaZip, convert.workflow"]
    system_command "/usr/bin/open",
                   args: ["#{service_menu}/PeaZip, extract here (smart new folder).workflow"]
    system_command "/usr/bin/open",
                   args: ["#{service_menu}/PeaZip, extract to Desktop.workflow"]
    system_command "/usr/bin/open",
                   args: ["#{service_menu}/PeaZip, extract to Documents.workflow"]
    system_command "/usr/bin/open",
                   args: ["#{service_menu}/PeaZip, extract to Downloads.workflow"]
    system_command "/usr/bin/open",
                   args: ["#{service_menu}/PeaZip, extract....workflow"]
    system_command "/usr/bin/open",
                   args: ["#{service_menu}/PeaZip, open file or folder.workflow"]
  end

  zap trash: [
    "~/Library/Preferences/com.company.peazip.plist",
    "~/Library/Saved Application State/com.company.peazip.savedState",
  ]
end
