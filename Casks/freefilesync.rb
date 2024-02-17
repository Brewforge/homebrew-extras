cask "freefilesync" do
  version "13.4"
  sha256 "950c1c16716e8acd12b98b5714733b597fbe1ae2c6b3ccdca67c91320188a793"

  url "https://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip"
  name "FreeFileSync"
  desc "Folder comparison and synchronization software"
  homepage "https://www.freefilesync.org/"

  livecheck do
    url "https://freefilesync.org/download.php"
    regex(/FreeFileSync (\d+(\.\d+)+) macOS/i)
  end

  auto_updates true

  pkg "FreeFileSync_#{version}.pkg"

  uninstall quit:    "org.freefilesync.FreeFileSync",
            pkgutil: "org.freefilesync.RealTimeSync"

  zap trash: [
    "~/Library/Application Support/FreeFileSync",
    "~/Library/Preferences/org.freefilesync.FreeFileSync.plist",
    "~/Library/Preferences/org.freefilesync.RealTimeSync.plist",
  ]
end
