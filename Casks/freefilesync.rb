cask "freefilesync" do
  version "13.5"
  sha256 "ae2fa41036c51b3c4ff134e6d48ed85db27e152c71ff6515bfc2248c1ab7eea6"

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
