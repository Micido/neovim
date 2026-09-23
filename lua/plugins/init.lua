local plugins = {}

local lua_path = os.getenv("CONFIG_ROOT") .. "/lua"
local plugin_dir = lua_path .. "/plugins"

local files = vim.fn.split(
	vim.fn.globalpath(
		plugin_dir,
		"**/*.lua"
	),
	"\n"
)

for _, file in ipairs(files) do
	local relative_path = file:sub(#lua_path + 2)

	local module_path = relative_path:gsub("%.lua$", "")

	module_path = module_path:gsub("/", ".")

	if not module_path:match("%.init") and module_path ~= "plugins" then
		local status_ok, module_content = pcall(require, module_path)

		if status_ok then
			table.insert(plugins, module_content)
		else
			vim.notify(
				"Error loading " .. module_path .. ": " .. module_content,
				vim.log.levels.ERROR
			)
	end
end

return plugins
