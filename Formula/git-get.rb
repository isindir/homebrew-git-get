class GitGet < Formula
  desc %q{Tool to clone/fetch project repositories an-mass using Gitfile configuration file.
git-get can also generate Gitfile from github, gitlab or bitbucket, to have all repositories user has access to.}
  homepage "https://github.com/isindir/git-get"
  version "0.0.12"
  sha256 "fb94b8dbe811016afc7329b8ee2fbb2ee4a265ba3ae3ec9999505f7930736af2"
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
