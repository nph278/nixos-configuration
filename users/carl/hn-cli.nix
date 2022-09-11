{ pkgs, ... }:

{
  home.packages = [
    (pkgs.buildGoModule {
      pname = "hn-cli";
      version = "1.0.0";

      src = pkgs.fetchFromGitHub {
        owner = "mhutter";
        repo = "hn-cli";
        rev = "01a7d9108fd463c0786e80f03bc7974419233ff2";
        sha256 = "df8fbd9ab39e026ed0437ab492a19b661aba1f5b0ce1327b25847e152c47c71d";
      };

      vendorSha256 = "sha256-xiXsLQCpgwwRTwz3Z+/ZYXu7yHci0GnQz6XEQf/pOi0=";
    })
  ];
}
