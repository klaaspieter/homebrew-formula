class Pb < Formula
  desc "Versions of `pbpaste` and `pbcopy` that handles arbitrary data"
  homepage "https://github.com/klaaspieter/pb"
  url "https://github.com/klaaspieter/pb/archive/1.0.0.tar.gz"
  sha256 "69c7865d6b58de61e7d130ad4df73a4c7a5ab58fd953cd70f1e51a7bc267adcc"

  def install
    system "swift", "build", "--configuration", "release"
    bin.install ".build/release/pbcp"
    bin.install ".build/release/pbps"
  end

  test do
    system "convert", "-size", "100x100", "xc:#990000", "a.png"
    system "cat a.png | #{bin}/pbcp"
    system "#{bin}/pbps > b.png"
    system "diff", "a.png", "b.png"
  end
end
