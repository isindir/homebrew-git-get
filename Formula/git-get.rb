class GitGet < Formula
  desc "Tool to clone/fetch project repositories an-mass using Gitfile configuration file"
  homepage "https://github.com/isindir/git-get"
  version "0.0.6"
  sha256 "f27e4bdb613007d36f8027e34d76206f984c35b0bff6ed081db7ef1b524bacd2"
  head "https://github.com/isindir/git-get.git"

  url "https://github.com/isindir/git-get/archive/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "make"
    bin.install "bin/git-get"
  end

  test do
    system "#{bin}/git-get", "version", "--long"
  end
end
