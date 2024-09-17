cask "wpsoffice-installer" do
  version "0024.21300060"
  sha256 :no_check

  url "https://wdl1.pcfg.cache.wpscdn.com/wpsdl/macwpsoffice/download/installer/WPS_Office_Installer_#{version}.zip",
      verified: "wdl1.pcfg.cache.wpscdn.com/"
  name "WPS Office"
  desc "AI-Powered Office Suite for Everyone"
  homepage "https://www.wps.com/"

  livecheck do
    skip "No Version Information Available"
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  installer script: {
    executable: "WPS Office Installer.app/Contents/MacOS/WPS Office Installer",
    args:       ["-q"],
  }

  uninstall quit: "com.kingsoft.wpsoffice.mac.global"

  zap trash: [
    "/Application/WPS Office.app",
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac.global",
    "~/Library/Application Support/CrashReporter/wpsoffice_1ACF1E2B-4D5C-504D-B6FE-65DDCCEC136A",
    "~/Library/Caches/com.kingsoft.wpsoffice.mac.global.installer",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.global",
    "~/Library/Containers/recentfilesglobal",
    "~/Library/Group Containers/2G98R5QYU5.wpsoffice",
    "~/Library/HTTPStorage/com.kingsoft.wpsoffice.mac.global.installer",
    "~/Library/Saved Application State/com.kingsoft.wpsoffice.mac.global.installer.savedState",
  ]
end
