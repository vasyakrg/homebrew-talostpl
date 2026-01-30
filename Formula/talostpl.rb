class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.3.2"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.3.2/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "37c7ba93f6f3d9c60df30e3e2b1e66c45f42f03e00181b873e85c7c5299a3769"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.3.2/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "78aa2caed59a6c69a11770873c46ab7f07ccc66020acc3d0d36664bc865b0c3f"
  else
    odie "Unexpected platform!"
  end

  def install
    if OS.mac? && Hardware::CPU.intel?
      bin.install "talostpl-darwin-amd64" => "talostpl"
    elsif OS.mac? && Hardware::CPU.arm?
      bin.install "talostpl-darwin-arm64" => "talostpl"
    end
  end
end
