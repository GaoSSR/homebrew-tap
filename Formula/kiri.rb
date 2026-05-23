class Kiri < Formula
  desc "Inspect local development listening ports"
  homepage "https://github.com/gaossr/kiri"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gaossr/kiri/releases/download/v0.1.15/kiri-aarch64-apple-darwin.tar.gz"
      sha256 "be9251c11a3c25afa0fe5c9ad24ffe94c5cac845c508e8cb7bbb1bd162f2b521"
    else
      url "https://github.com/gaossr/kiri/releases/download/v0.1.15/kiri-x86_64-apple-darwin.tar.gz"
      sha256 "f8d10a92c20b3b80f7922828b302348d540369989945972f711fdd10dbbe7abc"
    end
  end

  def install
    bin.install "ports"
  end

  test do
    assert_match "Kiri", shell_output("#{bin}/ports --help")
  end
end
