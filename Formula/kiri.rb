class Kiri < Formula
  desc "Inspect local development listening ports"
  homepage "https://github.com/gaossr/kiri"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gaossr/kiri/releases/download/v0.1.11/kiri-aarch64-apple-darwin.tar.gz"
      sha256 "845bace28dcf28d50dfe11695a76dc2deda6aea7ef473562accc92a207ec57c0"
    else
      url "https://github.com/gaossr/kiri/releases/download/v0.1.11/kiri-x86_64-apple-darwin.tar.gz"
      sha256 "cb26bea92796ff210688c188a8d0b022629de48ad61cd2c28304466ff9c3ec90"
    end
  end

  def install
    bin.install "ports"
  end

  test do
    assert_match "Kiri", shell_output("#{bin}/ports --help")
  end
end
