class Portrm < Formula
  desc "portrm - Fast, cross-platform CLI to inspect ports, understand processes, and recover broken dev environments"
  homepage "https://portrm.dev"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhishekayu/portrm/releases/download/v1.0.0/portrm-darwin-arm64.tar.gz"
      sha256 "f33adf3a215d8ed789f95e599b6dee42d27928fb08968c58af416a936264738b"
    else
      url "https://github.com/abhishekayu/portrm/releases/download/v1.0.0/portrm-darwin-amd64.tar.gz"
      sha256 "a3e2b78aa6f03eeb9095e1d556dcd8491f550b9c6a2e7e2be6bdb7a1f81e878f"
    end
  end

  on_linux do
    url "https://github.com/abhishekayu/portrm/releases/download/v1.0.0/portrm-linux-amd64.tar.gz"
    sha256 "9d7a37af1f7622868c28a5943d7f889690ef4cd171955a49d81f45604ca18f36"
  end

  def install
    bin.install "ptrm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ptrm --version")
  end
end
