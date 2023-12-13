cask "freefilesync" do
  version "13.2"
  sha256 "52cd93d4c51f5d2ee797e70ca17ed910b6cf17122edb9e1ad739c19eab8e398b"

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
