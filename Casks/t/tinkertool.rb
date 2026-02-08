cask "tinkertool" do
  version "11.4"
  sha256 "13c2d92e788e3cc7c90696261b638fcee5b3139f286eaa8fbea228a03de87ff4"

  url "https://www.bresink.biz/download3.php?PHPSESSID=#{version.csv.second}",
      verified: "bresink.biz/"
  name "TinkerTool"
  desc "Gives you access to additional system preference settings"
  homepage "https://bresink.com/osx/TinkerTool.html"

  livecheck do
    url "https://bresink.com/osx/0TinkerTool/download.php"
    skip "cannot obtain available info"
    # regex(/PHPSESSID=([\d+\w]+)/i)
    # strategy :page_match do |page, regex|
    #   # Match the ID for the macOS download
    #   version = page.scan(/(\d+(?:\.\d+)+) \(Build \d+\)/i).flatten.first
    #   mbskey = page.scan(/action=.*?dl=TinkerTool&MBSKey=([\d+\w]+)/i).flatten.first
    #   next if mbskey.blank?

    #   # Fetch the download_id for the download URL
    #   download_page = Homebrew::Livecheck::Strategy.page_content("https://www.bresink.com/download2.php?ln=1&dl=TinkerTool&MBSKey=#{mbskey}")
    #   download_id = download_page[:content]&.scan(regex)&.map { |match| match[0] }

    #   "#{version},#{download_page}"
    # end
  end

  app "TinkerTool.app"

  uninstall quit: "com.bresink.system.tinkertool"

  zap trash: [
    "~/Library/Application Scripts/com.bresink.system.tinkertool",
    "~/Library/Containers/com.bresink.system.tinkertool",
  ]
end
