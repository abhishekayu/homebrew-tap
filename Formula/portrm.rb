class Portrm < Formula
  desc "portrm - Fast, cross-platform CLI to inspect ports, understand processes, and recover broken dev environments"
  homepage "https://portrm.dev"
  version "2.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhishekayu/portrm/releases/download/v2.2.3/portrm-darwin-arm64.tar.gz"
      sha256 "0de684fd68395b56ae147e68af9d703d9f7914ca90cfd8a0c3d1d7b7366219a8"
    else
      url "https://github.com/abhishekayu/portrm/releases/download/v2.2.3/portrm-darwin-amd64.tar.gz"
      sha256 "5ce8e49f686170350bad15ae5e06e77bebdca77688b13047ab52720058f1d478"
    end
  end

  on_linux do
    url "https://github.com/abhishekayu/portrm/releases/download/v2.2.3/portrm-linux-amd64.tar.gz"
    sha256 "5c070c11dcd45000e6f0f85f7002cb204405c96598ec2e4bd79197dd075a201a"
  end

  def install
    bin.install "ptrm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ptrm --version")
  end
end
