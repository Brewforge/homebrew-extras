class Carapace < Formula
  desc "Multi-shell multi-command argument completer"
  homepage "https://github.com/carapace-sh/carapace-bin"
  version "1.0.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/carapace-sh/carapace-bin/releases/download/v1.0.6/carapace-bin_darwin_arm64.tar.gz"
    sha256 "592b6d9baa9d03b60b6e942434d9b10ad2ef99b1ce526921daddd11f5a1c21f8"
  elsif OS.mac? && !Hardware::CPU.arm?
    url "https://github.com/carapace-sh/carapace-bin/releases/download/v1.0.6/carapace-bin_darwin_amd64.tar.gz"
    sha256 "918d48631b0dbb425be2157a0ef02d6b617de0f2ec9e2f052b3588f4b7c82302"
  elsif !OS.mac? && Hardware::CPU.arm?
    url "https://github.com/carapace-sh/carapace-bin/releases/download/v1.0.6/carapace-bin_linux_arm64.tar.gz"
    sha256 "d5b057e9e338eb981db79a8c5e1b87d88bfacac5397287b48fe2490b9b385819"
  elsif !OS.mac? && !Hardware::CPU.arm?
    url "https://github.com/carapace-sh/carapace-bin/releases/download/v1.0.6/carapace-bin_linux_amd64.tar.gz"
    sha256 "27095228f793715d530fc461b5079f03ecf95c5264a0138bcb43fc6a08274f79"
  end

  livecheck do
    url :homepage
    strategy :github_latest
  end

  def install
    bin.install "carapace"
  end

  def caveats
    <<~EOS
            This registers all the available completers. It is also possible to load a single one by replacing _carapace with the completer name:
              export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense'
      source <(carapace _carapace)
    EOS
  end

  test do
    system "bin/carapace", "--list"
    system "bin/carapace", "--macro", "color.HexColors"
  end
end
