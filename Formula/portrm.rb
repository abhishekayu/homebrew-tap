class Portrm < Formula
  desc "portrm - Fast, cross-platform CLI to inspect ports, understand processes, and recover broken dev environments"
  homepage "https://portrm.dev"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhishekayu/portrm/releases/download/v1.0.1/portrm-darwin-arm64.tar.gz"
      sha256 "bbddb47f4344254ef4e7d6047013596bf609699f9b7a62f85128d6bb335c0987"
    else
      url "https://github.com/abhishekayu/portrm/releases/download/v1.0.1/portrm-darwin-amd64.tar.gz"
      sha256 "cd283df76e347d83d0b61aced39031d2c431621d5288886cbb64f09c3d2c434f"
    end
  end

  on_linux do
    url "https://github.com/abhishekayu/portrm/releases/download/v1.0.1/portrm-linux-amd64.tar.gz"
    sha256 "2113b5a19e67ec59e77c7301c52b70022a560603d381248d77c5b0e26b3aeb13"
  end

  def install
    bin.install "ptrm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ptrm --version")
  end
end
