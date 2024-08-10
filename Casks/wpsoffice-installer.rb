cask "wpsoffice-installer" do
  version "0024.21300042"
  sha256 :no_check

  url "https://wdl1.pcfg.cache.wpscdn.com/wpsdl/macwpsoffice/download/installer/WPS_Office_Installer_#{version}.zip"
  name "WPS Office"
  desc "AI-Powered Office Suite for Everyone"
  homepage "https://www.wps.com/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  installer script: {
    executable: "WPS Office Installer.app/Contents/MacOS/WPS Office Installer",
    args:       ["-q"],
  }

  zap trash: [
    "/Application/WPS Office.app",
    "~/Library/Application Support/CrashReporter/wpsoffice_1ACF1E2B-4D5C-504D-B6FE-65DDCCEC136A",
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac.global",
    "~/Library/Caches/com.kingsoft.wpsoffice.mac.global.installer",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.global",
    "~/Library/Containers/recentfilesglobal",
    "~/Library/Group Containers/2G98R5QYU5.wpsoffice",
    "~/Library/HTTPStorage/com.kingsoft.wpsoffice.mac.global.installer",
    "~/Library/Saved Application State/com.kingsoft.wpsoffice.mac.global.installer.savedState"
  ]
end
