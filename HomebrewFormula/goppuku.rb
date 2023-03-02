# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Goppuku < Formula
  desc "Have a VM put itself down if a given condition is met
"
  homepage "https://github.com/jlucktay/goppuku"
  version "0.6.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jlucktay/goppuku/releases/download/v0.6.8/goppuku_Darwin_x86_64.tar.gz"
      sha256 "eef370d079c911f0021ae48b0c4d62a58634d299c5cbd32a71d9257067dcdb77"

      def install
        bin.install "goppuku"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jlucktay/goppuku/releases/download/v0.6.8/goppuku_Darwin_arm64.tar.gz"
      sha256 "5f474fc918bed8fefbd310f4db699cacee2fe794b581bc70ffad0b28427ec0dc"

      def install
        bin.install "goppuku"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jlucktay/goppuku/releases/download/v0.6.8/goppuku_Linux_x86_64.tar.gz"
      sha256 "26fd03a4fb49149c1cd449f165baacc1132df5e05885c76a7160a8496c9724df"

      def install
        bin.install "goppuku"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jlucktay/goppuku/releases/download/v0.6.8/goppuku_Linux_arm64.tar.gz"
      sha256 "f4f58cfc85828f48817582e002c893df6f96555f586ec00a32cac64401438e1d"

      def install
        bin.install "goppuku"
      end
    end
  end

  def caveats
    <<~EOS
      Please see the README for usage instructions:
      https://github.com/jlucktay/goppuku/blob/main/README.md
    EOS
  end

  test do
    system "#{bin}/goppuku"
  end
end
