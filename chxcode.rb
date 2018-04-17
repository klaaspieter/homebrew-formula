class Chxcode < Formula
  desc "Changes the current Xcode"
  homepage "https://github.com/klaaspieter/chxcode"
  url "https://github.com/klaaspieter/chxcode/archive/0.0.1.tar.gz"
  sha256 "af8dc2fe2dc9c567002850bc93642056b5839771b59b332472eaf8c5dd049322"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
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
