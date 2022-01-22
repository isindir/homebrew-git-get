class GitGet < Formula
  desc %q{Tool to clone/fetch project repositories an-mass using Gitfile configuration file.
git-get can also generate Gitfile from github, gitlab or bitbucket, to have all repositories user has access to.}
  homepage "https://github.com/isindir/git-get"
  version "0.0.10"
  sha256 "c8775f4c4cf0cf9e6c00cb75f0895f763a11e0a2fae48c695dbabb62303c4b6a"
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
