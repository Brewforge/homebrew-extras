class Typstyle < Formula
  desc "Format your typst source code"
  homepage "https://github.com/Enter-tainer/typstyle"
  version "0.11.14"
  license "Apache-2.0"

  arch = Hardware::CPU.arm? ? "arm64" : "x64"

  if OS.mac?
    url "https://github.com/Enter-tainer/typstyle/releases/download/v#{version}/typstyle-darwin-#{arch}"
    if Hardware::CPU.arm?
      sha256 "bad507317bcb92d8fc89e5aa0017464b23d901e33473fb199e021ba7799717b1"
    else
      sha256 "f11d68a827118f6bf762bc159b3813906778eaf560d02d6e5b242f253a91ece9"
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
