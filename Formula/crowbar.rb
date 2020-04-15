# frozen_string_literal: true

# The main formula
class Crowbar < Formula
  desc 'Your trusty tool for retrieving AWS credentials securely via SAML'
  homepage 'https://github.com/moritzheiber/crowbar'
  version '0.3.4'
  bottle :unneeded

  if OS.mac?
    url 'https://github.com/moritzheiber/crowbar/releases/download/v0.3.4/crowbar-x86_64-macos'
    sha256 '5ff2aee3451a3c0c2b637d95653298f01e6df866799e2fad903ce906ebf02f43'
  end

  def install
    mv 'crowbar-x86_64-macos', 'crowbar'
    bin.install 'crowbar'
  end

  test do
    system "#{bin}/crowbar --version"
  end
end
