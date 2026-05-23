class Kiri < Formula
  desc "Inspect local development listening ports"
  homepage "https://github.com/gaossr/kiri"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gaossr/kiri/releases/download/v0.1.6/kiri-aarch64-apple-darwin.tar.gz"
      sha256 "e23ab4e5225d0ec4900b921d40d62e50b20e903a5c374dc9da9978b2ad3d54d9"
    else
      url "https://github.com/gaossr/kiri/releases/download/v0.1.6/kiri-x86_64-apple-darwin.tar.gz"
      sha256 "bc415e52d886c8c7ded57549f17798fd473864de488d2f29a17edeff33bd4d5c"
    end
  end

  def install
    bin.install "ports"
  end

  test do
    assert_match "Kiri", shell_output("#{bin}/ports --help")
  end
end
