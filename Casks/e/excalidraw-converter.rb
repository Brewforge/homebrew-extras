cask "excalidraw-converter" do
  arch arm: "arm64", intel: "amd64"

  os macos: "darwin", linux: "linux"

  version "1.4.3"
  sha256 arm:          "e5f094ae7f76c07b1b7a2c3605c882eaed76f84b1ccc4e3791ce00c180be75da",
         x86_64:       "b3b0490a4294fcb4b1e3defa5ce75d03ea1e4230168033d1f1d308bb36e1f595",
         arm64_linux:  "114801dce461004e85e3e0a61b5dc53ed902314b545c3ec17a7a3b7f32a509d8",
         x86_64_linux: "90042133030a48e3d8a445ac56b278253072c1ef2817ee706f674c825f44ba5f"

  url "https://github.com/sindrel/excalidraw-converter/releases/download/v#{version}/excalidraw-converter_#{version}_#{os}_#{arch}.tar.gz"
  name "excalidraw-converter"
  desc "Command-line tool for porting Excalidraw diagrams to Gliffy"
  homepage "https://github.com/sindrel/excalidraw-converter"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "exconv"
end
