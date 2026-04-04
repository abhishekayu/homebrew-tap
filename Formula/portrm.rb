class Portrm < Formula
  desc "portrm - Fast, cross-platform CLI to inspect ports, understand processes, and recover broken dev environments"
  homepage "https://portrm.dev"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhishekayu/portrm/releases/download/v1.0.2/portrm-darwin-arm64.tar.gz"
      sha256 "d73aac5ee3df36c63a6a59a80db3c46bfe41623b5cef66949f4084d68312b9a7"
    else
      url "https://github.com/abhishekayu/portrm/releases/download/v1.0.2/portrm-darwin-amd64.tar.gz"
      sha256 "1a6263b48751ab72ca4a695d571aab23d2479c544b1175a16ce38c244a545dd9"
    end
  end

  on_linux do
    url "https://github.com/abhishekayu/portrm/releases/download/v1.0.2/portrm-linux-amd64.tar.gz"
    sha256 "49036fc2120f1c69e0bb2a495fe5f4267996fc2f93f83c892a39e6f3a7d958f8"
  end

  def install
    bin.install "ptrm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ptrm --version")
  end
end
