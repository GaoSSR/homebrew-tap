class Kiri < Formula
  desc "Inspect local development listening ports"
  homepage "https://github.com/gaossr/kiri"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gaossr/kiri/releases/download/v#{version}/kiri-aarch64-apple-darwin.tar.gz"
      sha256 "e3e1b9b5c153ac197e1e48afcccd75230507eb678dc3466757d015af1391e137"
    else
      url "https://github.com/gaossr/kiri/releases/download/v#{version}/kiri-x86_64-apple-darwin.tar.gz"
      sha256 "88489832f82b630fe8903d886385c8ff3563a9aaa86534de9d037aa1f50d994f"
    end
  end

  def install
    bin.install "ports"
  end

  test do
    assert_match "Kiri", shell_output("#{bin}/ports --help")
  end
end
