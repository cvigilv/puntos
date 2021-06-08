" Language server
lua << EOF
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
	on_attach = require'completion'.on_attach()
	end
}
EOF
let g:diagnostic_auto_popup_while_jump  = 0
let g:diagnostic_enable_virtual_text    = 0
let g:diagnostic_enable_underline       = 0
let g:completion_timer_cycle            = 200
let g:completion_trigger_on_delete      = 1
let g:completion_trigger_keyword_length = 2
let g:completion_matching_smart_case    = 1
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']
let g:completion_enable_auto_hover      = 0

 " Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
