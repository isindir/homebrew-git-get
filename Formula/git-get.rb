# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitGet < Formula
  desc "Tool to clone/fetch project repositories an-mass using Gitfile configuration file. git-get can also generate Gitfile from github, gitlab or bitbucket, to have all repositories user has access to."
  homepage "https://github.com/isindir/git-get"
  version "0.0.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/isindir/git-get/releases/download/v0.0.24/git-get_Darwin_arm64.tar.gz"
      sha256 "313fc78a1c3cdc6f983b4cf1aa9a143dc780c8d226a35fde631426be5a347986"

      def install
        bin.install "git-get"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/isindir/git-get/releases/download/v0.0.24/git-get_Darwin_x86_64.tar.gz"
      sha256 "88f927379016011ccfd45a6d2ab8cc13d97fa2f231f70fb4bbde39b1d6fa146f"

      def install
        bin.install "git-get"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/isindir/git-get/releases/download/v0.0.24/git-get_Linux_arm64.tar.gz"
      sha256 "50d6997c77229ad5e913c0f7f848a4542951de21fdb365bbb64055f345d07a61"

      def install
        bin.install "git-get"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/isindir/git-get/releases/download/v0.0.24/git-get_Linux_x86_64.tar.gz"
      sha256 "698eb9cd3f3980cd3aab8643a3bb1c9d2cceae1e5544713a6352a8fa57f6e51a"

      def install
        bin.install "git-get"
      end
    end
  end

  test do
    system "#{bin}/git-get", "version", "--long"
  end
end
