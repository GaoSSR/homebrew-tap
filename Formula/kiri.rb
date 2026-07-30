class Kiri < Formula
  desc "Inspect local development listening ports"
  homepage "https://github.com/GaoSSR/Kiri"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GaoSSR/Kiri/releases/download/v0.1.23/kiri-aarch64-apple-darwin.tar.gz"
      sha256 "7a9d8c866cc39eb4c62a610b4cf5992598f2c332e448dc9e96c3fdca1dc8ff18"
    else
      url "https://github.com/GaoSSR/Kiri/releases/download/v0.1.23/kiri-x86_64-apple-darwin.tar.gz"
      sha256 "dcac9bd9915f1be75ce0bafa2e94b2274a425a2fb40441ab9bfff7b9497550c4"
    end
  end

  def install
    bin.install "ports"
  end

  test do
    assert_match "Kiri", shell_output("#{bin}/ports --help")
  end
end
