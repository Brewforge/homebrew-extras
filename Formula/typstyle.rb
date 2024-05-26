class Typstyle < Formula
  desc "Format your typst source code"
  homepage "https://github.com/Enter-tainer/typstyle"
  version "0.11.23"
  license "Apache-2.0"

  arch = Hardware::CPU.arm? ? "arm64" : "x64"

  if OS.mac?
    url "https://github.com/Enter-tainer/typstyle/releases/download/v#{version}/typstyle-darwin-#{arch}"
    if Hardware::CPU.arm?
      sha256 "318c670994045ab50b0572e0bb550b821919c56fa32df18d54b9f0f272fc2086"
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
