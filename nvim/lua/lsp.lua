-- Capabilities of the language server protocol
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

-- Configuration of the language server protocol per language
require'lspconfig'.julials.setup{
	on_new_config = function(new_config,new_root_dir)
	server_path = "/home/cvigilv/.julia/packages/LanguageServer/zWmew/src/"
	cmd = {
		"julia",
		"--project="..server_path,
		"--startup-file=no",
		"--history-file=no",
		"--sysimage=/home/cvigilv/repos/puntos/nvim/misc/julials.so",
        "--sysimage-native-code=yes",
		"-e", [[
          using Pkg;
          Pkg.instantiate()
          using LanguageServer; using SymbolServer;
          depot_path = get(ENV, "JULIA_DEPOT_PATH", "")
          project_path = dirname(something(Base.current_project(pwd()), Base.load_path_expand(LOAD_PATH[2])))
          # Make sure that we only load packages from this environment specifically.
          @info "Running language server" env=Base.load_path()[1] pwd() project_path depot_path
          server = LanguageServer.LanguageServerInstance(stdin, stdout, project_path, depot_path);
          server.runlinter = true;
          run(server);
		]]
	};
	new_config.cmd = cmd
	--on_attach = require'completion'.on_attach()
	capabilities = capabilities
	end
}

-- Diagnostics
vim.g.diagnostic_auto_popup_while_jump  = false
vim.g.diagnostic_enable_virtual_text    = false
vim.g.diagnostic_enable_underline       = false
