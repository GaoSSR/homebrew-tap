class Kiri < Formula
  desc "Inspect local development listening ports"
  homepage "https://github.com/gaossr/kiri"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gaossr/kiri/releases/download/v0.1.20/kiri-aarch64-apple-darwin.tar.gz"
      sha256 "2349257de1693ddf7ff368217de06678f48782a40ba5112f89531b2c4dc57627"
    else
      url "https://github.com/gaossr/kiri/releases/download/v0.1.20/kiri-x86_64-apple-darwin.tar.gz"
      sha256 "a76978711725ec0ba8ec6fb3fd8908d927fe9c5d027bdb29894d57a7429693c6"
    end
  end

  def install
    bin.install "ports"
  end

  test do
    assert_match "Kiri", shell_output("#{bin}/ports --help")
  end
end
