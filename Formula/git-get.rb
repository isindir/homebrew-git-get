class GitGet < Formula
  desc "git-get - clone/fetch project repositories"
  homepage "https://github.com/isindir/git-get"
  version "0.0.4"
  sha256 "3ff8664555b87b11a8417a070f6b2b90268de63239c792a090c85f5eefc77d18"

  url "https://github.com/isindir/git-get/archive/#{version}.tar.gz"
  depends_on "go" => :build

  def install
    system "make"
    bin.install "bin/git-get"
  end

  test do
    system "#{bin}/git-get", "--version"
  end
end
