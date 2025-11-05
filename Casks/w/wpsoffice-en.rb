cask "wpsoffice-en" do
  arch arm: "arm64", intel: "x64"

  lang = "en-US"
  channel = "0024.21300060"
  hdid = "11a27203ebea456b23522df31cfd8095"

  version "8699"
  sha256 arm:   "7aa402cd41c3afbfe33a3b0b308b9c207bac02fef33649897993e3ead9c8fe5a",
         intel: "0de6b2f7cbb751a13db9ea9632c2038d52fd829be7fd3643b14f0e90ed40e8b0"

  url "https://wdl1.pcfg.cache.wpscdn.com/wpsdl/macwpsoffice/download/installer/WPSOffice_#{arch}_#{channel}.dmg",
      verified: "wdl1.pcfg.cache.wpscdn.com/"
  name "WPS Office"
  desc "AI-Powered Office Suite for Everyone"
  homepage "https://wps.com/"

  livecheck do
    url "https://api-web-param-us.wps.com/onlineParamByFunc?funcName=Mac_Update&version=#{version}&hdid=#{hdid}&lang=#{lang}&channel=#{channel}&devicetype=mac"
    strategy :page_match do |page|
      params = JSON.parse(page)["params"]

      next version if params.blank?

      params[0]["extras"].find { |extra| extra["key"] == "latest_version" }["value"]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "wpsoffice.app"

  uninstall quit: "com.kingsoft.wpsoffice.mac.global"

  zap trash: [
    "/Applications/wpsoffice.app",
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac.global",
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac.global.recentfiles",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.global",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.global.recentfiles",
    "~/Library/Group Containers/2G98R5QYU5.wpsoffice",
    "~/Library/Saved Application State/com.kingsoft.wpsoffice.mac.global.savedState",
  ]
end
