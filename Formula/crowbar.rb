# frozen_string_literal: true

# The main formula
class Crowbar < Formula
  desc 'Your trusty tool for retrieving AWS credentials securely via SAML'
  homepage 'https://github.com/moritzheiber/crowbar'
  version '0.3.7'
  bottle :unneeded

  if OS.mac?
    url 'https://github.com/moritzheiber/crowbar/releases/download/v0.3.7/crowbar-x86_64-macos'
    sha256 '68f59acc427af9f280e185c553e72731051faeb06725eb6309f9432ab97e7b0e'
  end

  def install
    mv 'crowbar-x86_64-macos', 'crowbar'
    bin.install 'crowbar'
  end

  test do
    system "#{bin}/crowbar --version"
  end
end
