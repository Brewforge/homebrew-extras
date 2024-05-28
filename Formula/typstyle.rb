class Typstyle < Formula
  desc "Format your typst source code"
  homepage "https://github.com/Enter-tainer/typstyle"
  version "0.11.24"
  license "Apache-2.0"

  arch = Hardware::CPU.arm? ? "arm64" : "x64"

  if OS.mac?
    url "https://github.com/Enter-tainer/typstyle/releases/download/v#{version}/typstyle-darwin-#{arch}"
    if Hardware::CPU.arm?
      sha256 "74624ac55481528ff4ad6257a8c9987f4a3492d3fb5f4fa720585fe6a8a17bd5"
    else
      sha256 "d166b155b80635b45b617c80dcf5984a169955bafdfb0cb03d7ae361f6705e6b"
    end
  end

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    arch = Hardware::CPU.arm? ? "arm64" : "x64"
    bin.install "typstyle-darwin-#{arch}"
  end
end
