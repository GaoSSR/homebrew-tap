class Kiri < Formula
  desc "Inspect local development listening ports"
  homepage "https://github.com/gaossr/kiri"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gaossr/kiri/releases/download/v0.1.9/kiri-aarch64-apple-darwin.tar.gz"
      sha256 "9d0b533d8f87454078f1da35809e39df53a8f8c59d730bd50428283f3c513e19"
    else
      url "https://github.com/gaossr/kiri/releases/download/v0.1.9/kiri-x86_64-apple-darwin.tar.gz"
      sha256 "2a3e838ac4e2dd6ee8856c1984b09af0a9185503049dbd8176d2253fc35303da"
    end
  end

  def install
    bin.install "ports"
  end

  test do
    assert_match "Kiri", shell_output("#{bin}/ports --help")
  end
end
