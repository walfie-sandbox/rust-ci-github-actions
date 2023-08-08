{
  inputs = {
    nixCargoIntegration.url = "github:yusdacra/nix-cargo-integration";
  };

  outputs = { self, nixCargoIntegration }: nixCargoIntegration.lib.makeOutputs {
    root = ./.;
    buildPlatform = "naersk";
    defaultOutputs = {
      package = "example";
    };
  };
}
