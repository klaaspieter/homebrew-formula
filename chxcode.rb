class Chxcode < Formula
  desc "Changes the current Xcode"
  homepage "https://github.com/klaaspieter/chxcode"
  url "https://github.com/klaaspieter/chxcode/archive/0.0.1.tar.gz"
  sha256 "69f731db52210e91c5a8289631fe5b4cba21958848ec77c1db96747e58380a55"

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
