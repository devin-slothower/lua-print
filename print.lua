PrintCache = print
print = function(...)
    local print_string = ""
    local arg_table = {...}

    for i = 1, #arg_table do
        local arg_type = type(arg_table[i])

        if (arg_type == "number" or arg_type == "string" or arg_type == "boolean") then
            print_string = print_string .. "    " .. arg_table[i]
        elseif (arg_type == "table") then
            for key, value in pairs(arg_table[i]) do
                print_string = print_string .. "    " .. key .. ": " .. tostring(value)
            end
        else
            print_string = print_string .. "    " .. tostring(arg_table[i])
        end
    end

    PrintCache(print_string)
end
