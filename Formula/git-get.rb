# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitGet < Formula
  desc "Tool to clone/fetch project repositories an-mass using Gitfile configuration file. git-get can also generate Gitfile from github, gitlab or bitbucket, to have all repositories user has access to."
  homepage "https://github.com/isindir/git-get"
  version "0.0.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/isindir/git-get/releases/download/v0.0.13/git-get_0.0.13_Darwin_arm64.tar.gz"
      sha256 "031ce264d620121c61b9dc948fcca620d82edd966254ffe02eb144aed736cb67"

      def install
        bin.install "git-get"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/isindir/git-get/releases/download/v0.0.13/git-get_0.0.13_Darwin_x86_64.tar.gz"
      sha256 "ae2ac1b75bf80186943785a6f12de1c5859af24d2a63374b25540b162bf89bcc"

      def install
        bin.install "git-get"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/isindir/git-get/releases/download/v0.0.13/git-get_0.0.13_Linux_x86_64.tar.gz"
      sha256 "90e957c8049878efa1d87bce82986ef871c03c791ce3ece2bf0925e6aac71b67"

      def install
        bin.install "git-get"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/isindir/git-get/releases/download/v0.0.13/git-get_0.0.13_Linux_arm64.tar.gz"
      sha256 "8c369e08a422edf658418f531a4647bea2aaee4934e5ce73852e5573e0529b9f"

      def install
        bin.install "git-get"
      end
    end
  end

  test do
    system "#{bin}/git-get", "version", "--long"
  end
end
