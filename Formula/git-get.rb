class GitGet < Formula
  desc "- clone/fetch project repositories"
  homepage "https://github.com/isindir/git-get"
  url "https://github.com/isindir/git-get/archive/#{version}.tar.gz"
  version "0.0.5"
  sha256 "44972ea265f46dbdb15ee1612a4ee6d4e920df57ee5d6de6a0c76bb5892fc4cc"
  depends_on "go" => :build

  def install
    system "make"
    bin.install "bin/git-get"
  end

  test do
    system "#{bin}/git-get", "version", "--long"
  end
end
