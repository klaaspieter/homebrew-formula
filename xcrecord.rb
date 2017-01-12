class Xcrecord < Formula
  desc "Capture gifs from the iOS simulator"
  homepage "https://github.com/klaaspieter/xcrecord"
  url "https://github.com/klaaspieter/xcrecord/archive/v1.0.2.tar.gz"
  sha256 "ff0162feaeb8efb302938ef947de197909c5a75d9d7e171a6d732ebe83a1fadf"

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
