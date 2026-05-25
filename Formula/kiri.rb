class Kiri < Formula
  desc "Inspect local development listening ports"
  homepage "https://github.com/gaossr/kiri"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gaossr/kiri/releases/download/v0.1.19/kiri-aarch64-apple-darwin.tar.gz"
      sha256 "524edd10b0b9f99fd6142e6d932e7784a9b600e3c44f3e1d132127f163ea3d26"
    else
      url "https://github.com/gaossr/kiri/releases/download/v0.1.19/kiri-x86_64-apple-darwin.tar.gz"
      sha256 "36eb3141b1833602c29a88b2345840a894fb6bb4006e559d9a977cb9c6bbc74c"
    end
  end

  def install
    bin.install "ports"
  end

  test do
    assert_match "Kiri", shell_output("#{bin}/ports --help")
  end
end
