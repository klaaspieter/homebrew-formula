class PassQr < Formula
  desc "Convenience commands for reading and inserting QRs in pass on macOS"
  homepage "https://github.com/klaaspieter/pass-qr"
  url "https://github.com/klaaspieter/pass-qr/archive/v0.1.1.tar.gz"
  sha256 "a7d85c805169aac5eab3dd91c75a2fe4bc5a95f29860697ab8060d72358d8043"

  depends_on "pass"
  depends_on "qrencode"
  depends_on "pngpaste"
  depends_on "zbar"

  def install
    bin.install "pass-insert-qr", "pass-show-qr"
  end

  def caveats
    opoo <<-EOS.undent
      pass-qr is deprecated because pass supports showing QRs.
    EOS
  end

  test do
    system "#{bin}/pass-insert-qr"
    system "#{bin}/pass-show-qr"
  end
end
