{application, zipcode, [
	{description, ""},
	{vsn, "0.1.0"},
	{id, ""},
	{modules, ['search_zipcode_handler', 'zipcode_sup', 'zipcode_app']},
	{registered, [zipcode_sup]},
	{applications, [
		kernel,
		stdlib,
        cowboy
	]},
	{mod, {zipcode_app, []}},
	{env, []}
]}.
