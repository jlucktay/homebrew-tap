# This file was generated by GoReleaser. DO NOT EDIT.
class Stack < Formula
  desc "A support tool for use with Terraform stacks, Azure DevOps build pipelines, and GitHub projects/repos.
"
  homepage "https://github.com/jlucktay/stack"
  version "0.10.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/jlucktay/stack/releases/download/v0.10.3/stack_0.10.3_Darwin_x86_64.tar.gz"
    sha256 "d30305ab9cc44e9bc512a147a7a288f94c351555aacb2a79fdd75afd7e9cfc56"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/jlucktay/stack/releases/download/v0.10.3/stack_0.10.3_Linux_x86_64.tar.gz"
      sha256 "2c16a463618cb9055a6837ce82fcd22d16e9f76c5018be53ef33066a36d016c1"
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
