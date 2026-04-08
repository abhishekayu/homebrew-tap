class Portrm < Formula
  desc "portrm - Fast, cross-platform CLI to inspect ports, understand processes, and recover broken dev environments"
  homepage "https://portrm.dev"
  version "2.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhishekayu/portrm/releases/download/v2.2.1/portrm-darwin-arm64.tar.gz"
      sha256 "13928003e62897e99b67a25362bc4f48ec5d10e9636b6a13514c84f1f7c80057"
    else
      url "https://github.com/abhishekayu/portrm/releases/download/v2.2.1/portrm-darwin-amd64.tar.gz"
      sha256 "88a64af74b5fd29cbcd156d7c959fc081170fcc2e35b88f5069b202c4de17a55"
    end
  end

  on_linux do
    url "https://github.com/abhishekayu/portrm/releases/download/v2.2.1/portrm-linux-amd64.tar.gz"
    sha256 "ce90d159b590f66ea31a73009c74b1d13b62acce8d30d148f8175da150a80f7a"
  end

  def install
    bin.install "ptrm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ptrm --version")
  end
end
