class Xcrecord < Formula
  desc "Capture gifs from the iOS simulator"
  homepage "https://github.com/klaaspieter/xcrecord"
  url "https://github.com/klaaspieter/xcrecord/archive/v1.0.1.tar.gz"
  sha256 "4518368d74f855fd8023e8717d1167e9ca2193f208a413a638e64dcb9d317f3e"

  depends_on "ffmpeg"
  depends_on "gifsicle"
  depends_on "gnu-getopt"

  def install
    bin.install "xcrecord"
  end

  test do
    system "#{bin}/xcrecord", "version"
  end
end
