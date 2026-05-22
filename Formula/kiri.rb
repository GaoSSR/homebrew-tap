class Kiri < Formula
  desc "Inspect local development listening ports"
  homepage "https://github.com/gaossr/kiri"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gaossr/kiri/releases/download/v#{version}/kiri-aarch64-apple-darwin.tar.gz"
      sha256 "cb8cb42a6c25cf1d1e771e66ae8e58c7792597f9fa4b01c328149d5f6c5cc986"
    else
      url "https://github.com/gaossr/kiri/releases/download/v#{version}/kiri-x86_64-apple-darwin.tar.gz"
      sha256 "e6dc33d95f9582329da81a93e2237f14a371e2d5e8dda0852f32194492667af5"
    end
  end

  def install
    bin.install "ports"
  end

  test do
    assert_match "Kiri", shell_output("#{bin}/ports --help")
  end
end
