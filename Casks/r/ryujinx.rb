cask "ryujinx" do
  version "49574a9"
  sha256 "a1d908595b9a6abdf607cd2b5d1af8f6fc761964e1538df1825bb8f736732fcc"

  url "https://github.com/ryujinx-mirror/ryujinx/releases/download/#{version}/ryujinx-r.#{version}-macos_universal.app.tar.gz"
  name "Ryujinx"
  desc "Nintendo Switch emulator written in C#"
  homepage "https://github.com/ryujinx-mirror/ryujinx"

  livecheck do
    url :url
    regex(/ryujinx-r\.([\d\w]{7})-macos_universal\.app\.tar\.gz/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        match[1].to_s
      end
    end
  end

  app "ryujinx.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/org.ryujinx.Ryujinx",
    "~/Library/Application Support/Ryujinx",
    "~/Library/Logs/Ryujinx",
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
  ]
end
