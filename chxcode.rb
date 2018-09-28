class Chxcode < Formula
  desc "Changes the current Xcode"
  homepage "https://github.com/klaaspieter/chxcode"
  url "https://github.com/klaaspieter/chxcode/archive/0.0.3.tar.gz"
  sha256 "bc5be878f9cd6266e50dd77c45ed36509290ce701a7130cdd0bddda432ace75b"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  def caveats; <<-CAVEATS
    Add the following to your ~/.bashrc or ~/.zshrc file:
      source #{opt_share}/chxcode/chxcode

    To enable auto-switching of Xcode specified by .xcode-version files,
    add the following to your ~/.bashrc or ~/.zshrc:
      source #{opt_share}/chxcode/auto
    CAVEATS
  end
end
