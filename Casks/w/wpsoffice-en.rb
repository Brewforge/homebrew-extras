cask "wpsoffice-en" do
  arch arm: "arm64", intel: "x64"

  lang = "en-US"
  channel = "0024.21300060"
  hdid = "11a27203ebea456b23522df31cfd8095"

  version "6.11.0.8608"
  sha256 arm:   "3a90be5d9fb48e188f47273a15f66276a20b3b8d53db85ea01f742740e7aae39",
         intel: "0aa3c2b23f53ff8f56264b8a6dde601bfda4c9363a9760632a62d548a3c4d600"

  url "https://wdl1.pcfg.cache.wpscdn.com/wpsdl/macwpsoffice/download/installer/WPSOffice_#{arch}_#{channel}.dmg",
      verified: "wdl1.pcfg.cache.wpscdn.com/"
  name "WPS Office"
  desc "AI-Powered Office Suite for Everyone"
  homepage "https://www.wps.com/"

  livecheck do
    url "https://api-web-param-us.wps.com/onlineParamByFunc?funcName=Mac_Update&version=#{version}&hdid=#{hdid}&lang=#{lang}&channel=#{channel}&devicetype=mac"
    strategy :page_match do |page|
      params = JSON.parse(page)["params"]

      next version if params.blank?

      params[0]["extras"].find { |extra| extra["key"] == "latest_version" }["value"]
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

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
