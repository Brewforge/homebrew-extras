cask "freefilesync" do
  version "13.6"
  sha256 "a384701f702cdba04173d9a59a8d3f30326b62af7e37f55c1862e7dba401f47b"

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
