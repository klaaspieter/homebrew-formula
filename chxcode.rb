class Chxcode < Formula
  desc "Changes the current Xcode"
  homepage "https://github.com/klaaspieter/chxcode"
  url "https://github.com/klaaspieter/chxcode/archive/0.0.2.tar.gz"
  sha256 "886911a5dcb31819dd55170e0e6a979cba51d79a7b9aa215e8eb062cba69fa29"

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
