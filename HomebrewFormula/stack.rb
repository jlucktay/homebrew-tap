# This file was generated by GoReleaser. DO NOT EDIT.
class Stack < Formula
  desc "A support tool for use with Terraform stacks, Azure DevOps build pipelines, and GitHub projects/repos.
"
  homepage "https://github.com/jlucktay/stack"
  version "0.10.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/jlucktay/stack/releases/download/v0.10.2/stack_0.10.2_Darwin_x86_64.tar.gz"
    sha256 "08f691ee0e02aca0fad9d1fa85a96f10a3fe8b8b79faa95d70ecf907a9d7ed78"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/jlucktay/stack/releases/download/v0.10.2/stack_0.10.2_Linux_x86_64.tar.gz"
      sha256 "fa5f7dad0c017d826f4b0ada908c62cfbab59b036de0d0139d543d670abd0032"
    end
  end

  def install
    bin.install "stack"
    output = Utils.popen_read("#{bin}/stack completion bash")
    (bash_completion/"stack").write output
    prefix.install_metafiles
  end

  def caveats; <<~EOS
    Please see the README for usage instructions:
    https://github.com/jlucktay/stack/blob/master/README.md
  EOS
  end
end
