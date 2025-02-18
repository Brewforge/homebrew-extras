cask "aerospace@beta" do
  version "0.16.2-Beta"
  sha256 "1e26c4dc67110168fcb04000caf91904b94e42f453451726ad6000aef7e4340f"

  url "https://github.com/nikitabobko/AeroSpace/releases/download/v#{version}/AeroSpace-v#{version}.zip"
  name "AeroSpace"
  desc "I3-like tiling window manager"
  homepage "https://github.com/nikitabobko/AeroSpace"

  livecheck do
    # url :url
    # regex(/^v?(\d+(\.\d+)+(-Beta)?)$/i)
    # strategy :github_releases do |json, regex|
    #   json.map do |release|
    #     next if release["draft"]

    #     match = release["tag_name"]&.match(regex)
    #     next if match.blank?

    #     match[1]
    #   end
    # end
    skip "No livecheck as pre-release"
  end

  auto_updates true
  # NOTE: conflicts_with formula: is a stub and is not yet functional. :(
  # https://github.com/Homebrew/homebrew-cask/issues/12822
  # conflicts_with formula: "aerospace-cli"
  depends_on macos: ">= :ventura" # macOS 13

  app "AeroSpace-v#{version}/AeroSpace.app"
  binary "AeroSpace-v#{version}/bin/aerospace"
  manpage "AeroSpace-v#{version}/manpage/aerospace-close-all-windows-but-current.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-close.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-debug-windows.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-enable.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-exec-and-forget.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-flatten-workspace-tree.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-focus-monitor.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-focus.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-fullscreen.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-join-with.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-layout.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-list-apps.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-list-exec-env-vars.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-list-monitors.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-list-windows.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-list-workspaces.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-macos-native-fullscreen.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-macos-native-minimize.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-mode.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-move-node-to-monitor.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-move-node-to-workspace.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-move-workspace-to-monitor.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-move.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-reload-config.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-resize.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-split.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-workspace-back-and-forth.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-workspace.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace.1"

  postflight do
    system "xattr", "-d", "com.apple.quarantine", "#{staged_path}/AeroSpace-v#{version}/bin/aerospace"
  end

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/bobko.aerospace",
    "~/Library/Preferences/bobko.aerospace.plist",
  ]
end
