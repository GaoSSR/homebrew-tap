class Kiri < Formula
  desc "Inspect local development listening ports"
  homepage "https://github.com/gaossr/kiri"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gaossr/kiri/releases/download/v#{version}/kiri-aarch64-apple-darwin.tar.gz"
      sha256 "d45f95206018cd090cbcceefbd0022d8485dee60d63e73ae5d3caa6525a43197"
    else
      url "https://github.com/gaossr/kiri/releases/download/v#{version}/kiri-x86_64-apple-darwin.tar.gz"
      sha256 "981741cb8ce16a62906ade06b80f066d71c306c4edee43a003a300f27858ab1d"
    end
  end

  def install
    bin.install "ports"
  end

  test do
    assert_match "Kiri", shell_output("#{bin}/ports --help")
  end
end
