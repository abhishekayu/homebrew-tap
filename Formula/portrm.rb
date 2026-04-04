class Portrm < Formula
  desc "portrm - Fast, cross-platform CLI to inspect ports, understand processes, and recover broken dev environments"
  homepage "https://github.com/abhishekayu/portrm"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhishekayu/portrm/releases/download/v1.0.0/portrm-darwin-arm64.tar.gz"
      sha256 "835b8caacbe3c63d17f467c629c6facb2c38ff701dd1f4d0bd286133d4202dfa"
    else
      url "https://github.com/abhishekayu/portrm/releases/download/v1.0.0/portrm-darwin-amd64.tar.gz"
      sha256 "8ebc63ae10892cda1fe4cf74de19f4ad280a3955046eb4537c563d6e413525f7"
    end
  end

  on_linux do
    url "https://github.com/abhishekayu/portrm/releases/download/v1.0.0/portrm-linux-amd64.tar.gz"
    sha256 "c6f81b758b17279ef4dcb8313365db40f6bf5f3d02a28c02adde76464f5de0ac"
  end

  def install
    bin.install "ptrm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ptrm --version")
  end
end
