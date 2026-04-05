class Portrm < Formula
  desc "portrm - Fast, cross-platform CLI to inspect ports, understand processes, and recover broken dev environments"
  homepage "https://portrm.dev"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhishekayu/portrm/releases/download/v2.1.0/portrm-darwin-arm64.tar.gz"
      sha256 "3b46180493a76ce30c4dae0b62187a98b05655774c0e51909ebd03b390e9e567"
    else
      url "https://github.com/abhishekayu/portrm/releases/download/v2.1.0/portrm-darwin-amd64.tar.gz"
      sha256 "8f9d7c37218c8a219f3fcb46fe02526540150d439c98b5a30c385e6d1540aa73"
    end
  end

  on_linux do
    url "https://github.com/abhishekayu/portrm/releases/download/v2.1.0/portrm-linux-amd64.tar.gz"
    sha256 "a1e4e39fc4a9e6107ceafbc1b25051341bff11fcddbfaf8c7335b49a0f0940a4"
  end

  def install
    bin.install "ptrm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ptrm --version")
  end
end
