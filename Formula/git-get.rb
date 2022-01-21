class GitGet < Formula
  desc %q{Tool to clone/fetch project repositories an-mass using Gitfile configuration file.
git-get can also generate Gitfile from github, gitlab or bitbucket, to have all repositories user has access to.}
  homepage "https://github.com/isindir/git-get"
  version "0.0.9"
  sha256 "02fa1dff9ca02bfb4def67cba00d1380fdb0ed0d59e01392d2317c8c3e9c41d9"
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
