class GitGet < Formula
  desc %q{Tool to clone/fetch project repositories an-mass using Gitfile configuration file.
git-get can also generate Gitfile from github, gitlab or bitbucket, to have all repositories user has access to.}
  homepage "https://github.com/isindir/git-get"
  version "0.0.8"
  sha256 "f051d26fc83d051908379ce7e49c95184a729ddd263db9e3efc5058775cba3a1"
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
