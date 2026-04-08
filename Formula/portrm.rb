class Portrm < Formula
  desc "portrm - Fast, cross-platform CLI to inspect ports, understand processes, and recover broken dev environments"
  homepage "https://portrm.dev"
  version "2.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhishekayu/portrm/releases/download/v2.2.2/portrm-darwin-arm64.tar.gz"
      sha256 "5d82c76ced4f3ee66d0edc984462b227530f89e66fe24dc12d6c745731583b59"
    else
      url "https://github.com/abhishekayu/portrm/releases/download/v2.2.2/portrm-darwin-amd64.tar.gz"
      sha256 "7367fde81e5c0fd698d8b53e3d4c396b66525ed0338f9a7732013cc3929b69f0"
    end
  end

  on_linux do
    url "https://github.com/abhishekayu/portrm/releases/download/v2.2.2/portrm-linux-amd64.tar.gz"
    sha256 "e523c3eff484ebddf2a4cd1b97bc0fb11d6c8c41e7673d8c16336ffacefe3825"
  end

  def install
    bin.install "ptrm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ptrm --version")
  end
end
