class Pomodoro < Formula
  desc "Command-line Pomodoro timer"
  homepage "https://github.com/klaaspieter/pomodoro"
  url "https://github.com/klaaspieter/pomodoro/archive/1.0.0.tar.gz"
  sha256 "c3abaaf2bc8c860ef8a4e239b6ffd6eb51de5a5014221f6aded3611c2a5eea2d"

  depends_on "coreutils"

  def install
    bin.install "pomodoro"
  end

  test do
    system "#{bin}/pomodoro", "version"
  end
end
