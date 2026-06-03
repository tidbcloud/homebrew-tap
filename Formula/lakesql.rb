class Lakesql < Formula
  desc "TiDB Cloud Lake native command-line tool"
  homepage "https://github.com/tidbcloud/lakesql"
  version "0.1.5-alpha.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://lakesql-bin.tidbcloud.com/lakesql/v#{version}/lakesql-aarch64-apple-darwin.tar.gz"
      sha256 "2e3f88ea586a0e57f79ccf7214b5c92e4d9a41c8c4973fc197b4d25496ba8ed6"
    end

    on_intel do
      url "https://lakesql-bin.tidbcloud.com/lakesql/v#{version}/lakesql-x86_64-apple-darwin.tar.gz"
      sha256 "ec98815f2e4c7a15a998f186981f3ae4f0dcff9f956832067a07014b91282eee"
    end
  end

  def install
    bin.install "lakesql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lakesql --version")
  end
end
