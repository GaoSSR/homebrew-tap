class Kiri < Formula
  desc "Inspect local development listening ports"
  homepage "https://github.com/GaoSSR/Kiri"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GaoSSR/Kiri/releases/download/v0.1.24/kiri-aarch64-apple-darwin.tar.gz"
      sha256 "42f2b4ff91378abb4cae540f6a4654f596c971c5187c25ef3a3933aded140258"
    else
      url "https://github.com/GaoSSR/Kiri/releases/download/v0.1.24/kiri-x86_64-apple-darwin.tar.gz"
      sha256 "7cae8c3922b245e01e75f8e099c0d020a3be277979a4f4301a947539bca040f2"
    end
  end

  def install
    bin.install "ports"
  end

  test do
    assert_match "Kiri", shell_output("#{bin}/ports --help")
  end
end
