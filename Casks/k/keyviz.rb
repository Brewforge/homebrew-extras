cask "keyviz" do
  version "2.0.0a2"
  sha256 "ac50b8a00b2b8e4cd4f5dc020b574bb304d1191eb3e4510da50231076be8b86f"

  url "https://github.com/mulaRahul/keyviz/releases/download/v#{version}/keyviz-v#{version}-macos.dmg"
  name "keyviz"
  desc "Visualize your keystrokes && mouse actions in real-time"
  homepage "https://github.com/mulaRahul/keyviz"

  livecheck do
    url "https://github.com/mulaRahul/keyviz/tags"
    strategy :page_match do |page|
      match = page.match(/href=.*?v(\d+(\.\d+)+(a\d)?)/i)
      next if match.blank?

      match[1].to_s
    end
  end

  auto_updates true

  app "keyviz.app"

  zap trash: [
    "/private/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.example.keyviz",
    "~/Library/Application Scripts/com.example.keyviz",
    "~/Library/Containers/com.example.keyviz",
  ]
end
