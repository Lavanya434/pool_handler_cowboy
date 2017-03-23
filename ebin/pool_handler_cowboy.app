{application, 'pool_handler_cowboy', [
	{description, "New project"},
	{vsn, "0.1.0"},
	{modules, ['my_handler','new_handler','pool_handler_cowboy_app','pool_handler_cowboy_sup']},
	{registered, [pool_handler_cowboy_sup]},
	{applications, [kernel,stdlib,cowboy]},
	{mod, {pool_handler_cowboy_app, []}},
	{env, []}
]}.