# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MyGithubRepos < Formula
  desc "GraphQL-based tool to fetch GitHub repos sorted by creation date"
  homepage "https://github.com/jlucktay/my-github-repos"
  version "0.3.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jlucktay/my-github-repos/releases/download/v0.3.13/my-github-repos_Darwin_x86_64.tar.gz"
      sha256 "e559f6f17bd32981580513a70c021862d40336110dc792acc450e2769e74a4fa"

      def install
        bin.install "my-github-repos"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jlucktay/my-github-repos/releases/download/v0.3.13/my-github-repos_Darwin_arm64.tar.gz"
      sha256 "33517f25f450e4cf70e1565c4ff01962f25b9c6d9908b99463978b6e28da28ba"

      def install
        bin.install "my-github-repos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jlucktay/my-github-repos/releases/download/v0.3.13/my-github-repos_Linux_x86_64.tar.gz"
        sha256 "9d0d84b2dfd0201c9fa76b7bc48afbe8fd87e9c9b665e4d6d8fcef7c56c1fc3a"

        def install
          bin.install "my-github-repos"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jlucktay/my-github-repos/releases/download/v0.3.13/my-github-repos_Linux_arm64.tar.gz"
        sha256 "a53fbd4e8641fdb00fd5bde31552f2d9d49bb6994a4dac3564085af9f6701b4f"

        def install
          bin.install "my-github-repos"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Please see the README for usage instructions:
      https://github.com/jlucktay/my-github-repos/blob/main/README.md
    EOS
  end

  test do
    system "#{bin}/my-github-repos --version"
  end
end
