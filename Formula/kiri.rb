class Kiri < Formula
  desc "Inspect local development listening ports"
  homepage "https://github.com/gaossr/kiri"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gaossr/kiri/releases/download/v0.1.17/kiri-aarch64-apple-darwin.tar.gz"
      sha256 "4864cab7a88f7017437df4f51576a8bb4da6f9f527a9b32610265de1c4399bf6"
    else
      url "https://github.com/gaossr/kiri/releases/download/v0.1.17/kiri-x86_64-apple-darwin.tar.gz"
      sha256 "c7c3a3f19baa1c6100970e58f370f049586a99ba798ef7d9dceb8fa846de9b30"
    end
  end

  def install
    bin.install "ports"
  end

  test do
    assert_match "Kiri", shell_output("#{bin}/ports --help")
  end
end
