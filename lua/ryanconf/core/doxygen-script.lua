-- Function to generate Doxygen template with parameter names only and no function name
local function generate_doxygen_template()
	-- Get the current line and parse the function signature
	local line = vim.fn.getline(".")

	-- Parse parameter names only
	local params = {}
	-- Match the function signature more accurately
	local function_signature = line:match("([%w%s%*]+)%s+([%w_]+)%s*%(")
	if function_signature then
		-- Extracting the parameters using the pattern
		for param_type, param_name in line:gmatch("([%w%s%*]+)%s+([%w_]+)") do
			-- Ensure the param_name is not the function name
			if
				param_name ~= "(*"
				and param_name ~= "typedef"
				and param_name ~= "void"
				and param_name ~= line:match("%s*([%w_]+)%s*%(")
			then
				table.insert(params, param_name)
			end
		end
	end

	-- Template string
	local doxygen_template = { "/**", " * @brief", " *" }

	-- Insert @param lines with parameter names only
	for _, param in ipairs(params) do
		table.insert(doxygen_template, " * @param " .. param .. " ")
	end

	table.insert(doxygen_template, " */")

	-- Insert the template lines above the current line
	vim.fn.append(vim.fn.line(".") - 1, doxygen_template)
end

-- Command to call the Doxygen template generation function
vim.api.nvim_create_user_command("DoxTemplate", generate_doxygen_template, {})
