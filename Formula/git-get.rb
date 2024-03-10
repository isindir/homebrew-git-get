# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitGet < Formula
  desc "Tool to clone/fetch project repositories an-mass using Gitfile configuration file. git-get can also generate Gitfile from github, gitlab or bitbucket, to have all repositories user has access to."
  homepage "https://github.com/isindir/git-get"
  version "0.0.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/isindir/git-get/releases/download/v0.0.26/git-get_Darwin_arm64.tar.gz"
      sha256 "422abf2a9c5e00c02c19ed54ac7ea25533cfb2b260a4ad9f3f0e14f6b3284ee7"

      def install
        bin.install "git-get"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/isindir/git-get/releases/download/v0.0.26/git-get_Darwin_x86_64.tar.gz"
      sha256 "e337833384b5d08d2df1ab4807bd94cdfbe56bf2789921380f25725aa9100247"

      def install
        bin.install "git-get"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/isindir/git-get/releases/download/v0.0.26/git-get_Linux_x86_64.tar.gz"
      sha256 "c902cff8ade9a11b0f23c4c12c7cf60fc99f03a553b0c0e58e634fb08553792a"

      def install
        bin.install "git-get"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/isindir/git-get/releases/download/v0.0.26/git-get_Linux_arm64.tar.gz"
      sha256 "7a2ead2379a9979395622430b123a2d33e27b61d17056ca5bdc2fd70b9f51abd"

      def install
        bin.install "git-get"
      end
    end
  end

  test do
    system "#{bin}/git-get", "version", "--long"
  end
end
