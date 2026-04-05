class Portrm < Formula
  desc "portrm - Fast, cross-platform CLI to inspect ports, understand processes, and recover broken dev environments"
  homepage "https://portrm.dev"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhishekayu/portrm/releases/download/v2.0.0/portrm-darwin-arm64.tar.gz"
      sha256 "e377d6b07caa598134e0273960769042094b6671807633a2cd34eb0f2e05ad77"
    else
      url "https://github.com/abhishekayu/portrm/releases/download/v2.0.0/portrm-darwin-amd64.tar.gz"
      sha256 "0f4cb0a137227b93a104f0de07da9020b1128d20e52030bbeb242b1669d591f5"
    end
  end

  on_linux do
    url "https://github.com/abhishekayu/portrm/releases/download/v2.0.0/portrm-linux-amd64.tar.gz"
    sha256 "e7ce434e490956dd016bcdf6609aa3de3967c233729502a8e2d6dc66681dc967"
  end

  def install
    bin.install "ptrm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ptrm --version")
  end
end
