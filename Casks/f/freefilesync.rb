cask "freefilesync" do
  version "14.4"
  sha256 "a18d76ac24aa3bfeb313797b931057308307a60f57e782609279a6bc261e1eb8"

  url "https://freefilesync.org/download/FreeFileSync_#{version}_macOS.zip"
  name "FreeFileSync"
  desc "Folder comparison and synchronization software"
  homepage "https://freefilesync.org/"

  livecheck do
    url "https://freefilesync.org/download.php"
    regex(/FreeFileSync (\d+(\.\d+)+) macOS/i)
  end

  auto_updates true

  pkg "FreeFileSync_#{version}.pkg",
      choices: [
        {
          "choiceIdentifier" => "installer_choice_1",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_2",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: [
    "org.freefilesync.pkg.FreeFileSync",
    "org.freefilesync.pkg.RealTimeSync",
  ]

  zap trash: [
    "~/Library/Application Support/FreeFileSync",
    "~/Library/Preferences/org.freefilesync.FreeFileSync.plist",
    "~/Library/Preferences/org.freefilesync.RealTimeSync.plist",
  ]
end
