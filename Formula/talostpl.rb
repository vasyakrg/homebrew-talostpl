class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.14.2"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.14.2/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "756ffb194abf0e12133cc2500d3fab280ce39930e5cf329e5f7fb1d58e029efe"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.14.2/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "06f4706524a92870638d650bf2ced1107566c20484e5c7077a3df7d872cba6f7"
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
