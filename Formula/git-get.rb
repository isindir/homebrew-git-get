class GitGet < Formula
  desc %q{Tool to clone/fetch project repositories an-mass using Gitfile configuration file.
git-get can also generate Gitfile from github, gitlab or bitbucket, to have all repositories user has access to.}
  homepage "https://github.com/isindir/git-get"
  version "0.0.11"
  sha256 "1170d706df11f5eb3f709ab2bd5794172220a447dea6ea5049a70a749ce1f694"
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
