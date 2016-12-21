class Xcrecord < Formula
  desc "Capture gifs from the iOS simulator"
  homepage "https://github.com/klaaspieter/xcrecord"
  url "https://github.com/klaaspieter/xcrecord/archive/v1.0.0.tar.gz"
  sha256 "8255e1e0aed83c5b72a0ead2206a618b75e255984dbc1ec8c45a22e4fe9b361c"

  def install
    bin.install "xcrecord"
  end

  test do
    system "#{bin}/xcrecord", "version"
  end
end
