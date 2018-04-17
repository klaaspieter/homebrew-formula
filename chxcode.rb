class Chxcode < Formula
  desc "Changes the current Xcode"
  homepage "https://github.com/klaaspieter/chxcode"
  url "https://github.com/klaaspieter/chxcode/archive/0.0.1.tar.gz"
  sha256 "33d9abc44722d7e1747e94834f979a5e63fdddda7a80ad4293dac0618af32ecc"

  def install
    system "make", "install" "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
