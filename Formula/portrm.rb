class Portrm < Formula
  desc "portrm - Fast, cross-platform CLI to inspect ports, understand processes, and recover broken dev environments"
  homepage "https://portrm.dev"
  version "1.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhishekayu/portrm/releases/download/v1.0.6/portrm-darwin-arm64.tar.gz"
      sha256 "794c67fcaa98f7cb1ee591bfc7210a0b8445b0f8e06569b78d0b9be0058fd3e8"
    else
      url "https://github.com/abhishekayu/portrm/releases/download/v1.0.6/portrm-darwin-amd64.tar.gz"
      sha256 "b293a65fe1fe905a7ff8f2ee3de30fd253eec149ca3a15a4cfd6a41aff61a0c5"
    end
  end

  on_linux do
    url "https://github.com/abhishekayu/portrm/releases/download/v1.0.6/portrm-linux-amd64.tar.gz"
    sha256 "7a4cb1063f70e4253802dfcd7b4fe915593eb6c6cd452368b1426fb9aa455313"
  end

  def install
    bin.install "ptrm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ptrm --version")
  end
end
