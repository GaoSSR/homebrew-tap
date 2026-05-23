class Kiri < Formula
  desc "Inspect local development listening ports"
  homepage "https://github.com/gaossr/kiri"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gaossr/kiri/releases/download/v0.1.10/kiri-aarch64-apple-darwin.tar.gz"
      sha256 "b58626529e069d93024e0b388187a10175c96a9239c9ffb0234efc39780e312e"
    else
      url "https://github.com/gaossr/kiri/releases/download/v0.1.10/kiri-x86_64-apple-darwin.tar.gz"
      sha256 "b63d4b76292e21c3a6d5a8e6108ee1da743f4ef29df9ef8b76ff7c6dc24ce1a2"
    end
  end

  def install
    bin.install "ports"
  end

  test do
    assert_match "Kiri", shell_output("#{bin}/ports --help")
  end
end
