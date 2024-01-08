cask "freefilesync" do
  version "13.3"
  sha256 "528eb16b53a8983d43f905021f14e00081b3814a8df84974bc977d4b9ed05cfc"

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
    "~/Library/Preferences/org.freefilesync.FreeFileSync.plist",
    "~/Library/Preferences/org.freefilesync.RealTimeSync.plist",
    "~/Library/Application Support/FreeFileSync",
  ]
end
