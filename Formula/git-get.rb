class GitGet < Formula
  desc "git-get - clone/fetch project repositories"
  homepage "https://github.com/isindir/git-get"
  version "0.0.3"

  url "https://github.com/isindir/git-get/archive/#{version}.tar.gz"
  sha256 "2c95ecd63690641d749c0d58580d3f4e4c2589afa986ec5e93dfe6a5981c6c85"
  depends_on "go" => :build

  def install
    system "make"
    bin.install "bin/git-get"
  end

  test do
    system "#{bin}/git-get", "--version"
  end
end
