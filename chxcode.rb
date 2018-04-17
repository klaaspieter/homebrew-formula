class Chxcode < Formula
  desc "Changes the current Xcode"
  homepage "https://github.com/klaaspieter/chxcode"
  url "https://github.com/klaaspieter/chxcode/archive/0.0.1.tar.gz"
  sha256 "d694bd8daffcc1a97571d6895cab7efe3c28a426b1af67a751b60fec189abd72"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  def caveats; <<-EOS
    Add the following to your ~/.bashrc or ~/.zshrc file:
      source #{opt_share}/chxcode/chxcode

    To enable auto-switching of Xcode specified by .xcode-version files,
    add the following to your ~/.bashrc or ~/.zshrc:
      source #{opt_share}/chxcode/auto
    EOS
  end
end
