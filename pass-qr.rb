class PassQr < Formula
  desc "Convenience commands for reading and inserting QRs in pass on macOS"
  homepage "https://github.com/klaaspieter/pass-qr"
  url "https://github.com/klaaspieter/pass-qr/archive/0.1.tar.gz"
  sha256 "3898e427c89c794eeca10153e01e7dd8e923d84c466e349f8e7002d461e18a50"

  depends_on "pass"

  def install
    bin.install "pass-insert-qr", "pass-show-qr"
  end
end
