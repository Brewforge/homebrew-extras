cask "wpsoffice-en" do
  arch arm: "arm64", intel: "x64"

  lang = "en-US"
  channel = "0024.21300060"
  hdid = "11a27203ebea456b23522df31cfd8095"

  version "6.10.1.8197"
  sha256 arm:   "54685bed2768a6d389dbe1db490069a77af82deca293bf833499ce8c4a65f374",
         intel: "781b76209bdcb2d020602dcc1b3fc22410b13214b9c8d9a30ced679eb4d24974"

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
