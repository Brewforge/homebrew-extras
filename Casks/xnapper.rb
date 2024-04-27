cask "xnapper" do
  version "1.17.1"
  sha256 "1cfbabf28fb49d117febcc81c77ced5989768f9150d451417cd4f526b048c7e7"

  url "https://xnapper.com/dmg/Xnapper-#{version}.dmg"
  name "xnapper"
  desc "Snap Beautiful Screenshots Instantly"
  homepage "https://xnapper.com/"

  livecheck do
    url "https://xnapper.com/changelog"
    regex(/(\d+(\.\d+)+) \(/i)
  end

  auto_updates true

  app "Xnapper.app"

  zap trash: [
    "~/Library/Application Scripts/com.devuap.beautyshotapp-LaunchAtLoginHelper",
    "~/Library/Application Scripts/com.devuap.beautyshotapp.Xnapper-Mac-Share-Extension",
    "~/Library/Application Support/Xnapper",
    "~/Library/Containers/com.devuap.beautyshotapp-LaunchAtLoginHelper",
    "~/Library/Containers/com.devuap.beautyshotapp.Xnapper-Mac-Share-Extension",
    "~/Library/HTTPStorages/com.devuap.beautyshotapp",
    "~/Library/Preferences/com.devuap.beautyshotapp.plist",
    "~/Library/Saved Application State/com.devuap.beautyshotapp.savedState",
  ]
end
