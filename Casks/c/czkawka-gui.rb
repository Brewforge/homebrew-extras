cask "czkawka-gui" do
  arch arm: "_arm", intel: ""
  os macos: "mac", linux: "linux"

  version "8.0.0"
  sha256 arm:          "725cb58f3d07f45ed50b3d82312ef3fd5dc8734f9030082414d02916e4289f07",
         x86_64:       "fd4d1fed905c4959a19beba24c1acfaf17d48618c056ced78b134104fbc519d1",
         arm64_linux:  "ce401a5877a30065d79be5ba9b390eed79dd7ab00284dfeb470b8d6e7ed82a5f",
         x86_64_linux: "850cabbd47e3cf2fe33f7fa953b51f43ce90226954adce76aed5ddcb38e56d62"

  url "https://github.com/qarmin/czkawka/releases/download/#{version}/#{os}_czkawka_gui#{arch}"
  name "czkawka"
  desc "Duplicate file utility"
  homepage "https://github.com/qarmin/czkawka"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "brewforge/more/czkawka-cli"
  depends_on formula: "gtk4"

  binary "#{os}_czkawka_gui#{arch}", target: "czkawka"
end
