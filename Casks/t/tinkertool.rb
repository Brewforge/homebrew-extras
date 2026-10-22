cask "tinkertool" do
  version "11.71,c70a76c4ceb8349dee019ce09508f158"
  sha256 "5e3d30d2daabc5462f4015d9921a2b6e93bec393e8803a15f19f69b6c989656c"

  # The original DMG on MacUpdate matches the developer's published SHA-256.
  url "https://dist.macupdate.com/distributive/5721/#{version.csv.second}/TinkerTool_#{version.csv.first}.dmg"
  name "TinkerTool"
  desc "Gives you access to additional system preference settings"
  homepage "https://www.bresink.com/osx/TinkerTool.html"

  livecheck do
    url "https://tinkertool.macupdate.com/", user_agent: :browser
    regex(%r{/distributive/5721/([a-f\d]{32})/TinkerTool[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |download_id, app_version| "#{app_version},#{download_id}" }
    end
  end

  depends_on macos: :tahoe

  app "TinkerTool.app"

  uninstall quit: "com.bresink.system.tinkertool"

  zap trash: [
    "~/Library/Application Scripts/com.bresink.system.tinkertool",
    "~/Library/Containers/com.bresink.system.tinkertool",
  ]
end
