class Portrm < Formula
  desc "portrm - Fast, cross-platform CLI to inspect ports, understand processes, and recover broken dev environments"
  homepage "https://portrm.dev"
  version "2.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhishekayu/portrm/releases/download/v2.2.4/portrm-darwin-arm64.tar.gz"
      sha256 "a7ba3c71b1fef20bdc4ee711a1ef4956bfcce5b70e8df1e5f6011132eb25ec19"
    else
      url "https://github.com/abhishekayu/portrm/releases/download/v2.2.4/portrm-darwin-amd64.tar.gz"
      sha256 "8766df18e14c814b46e2311a7734920b656d1c905d7766e5e41d96378fd01658"
    end
  end

  on_linux do
    url "https://github.com/abhishekayu/portrm/releases/download/v2.2.4/portrm-linux-amd64.tar.gz"
    sha256 "cefe7d10fd568424f571a1975dcf71157a02a36437da2ea20792deb15d62e9d1"
  end

  def install
    bin.install "ptrm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ptrm --version")
  end
end
