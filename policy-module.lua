-- Policy manager for Roblox games - Stops users from using F3X (building tools) and is fully expandable to even delete models!

-- To check the expanding wiki with tutorials and more, check out our GitHub page!
local sys = {} --! DO NOT REMOVE ! Used for ModuleScript.
local wspace = game.Workspace
local policies = {
    PreventF3X = true,
}

-- To disable the Policy Manager, just disable the PolicyGetter script.


function sys:ScanWorkspace()
    local workspace_table = {wspace:GetChildren()} -- gets children of workspace.
    local scanned_items = {}
    for i = 1,workspace_table in ipairs(workspace_table) do -- TODO: Improve scanning part
        table.insert(i,scanned_items)
    end 
    if i.Name == "Building tools by F3X" then
        i:Destroy()
        warn("Building tools was destoryed; Policy returns "..policies.PreventF3X)
    end   
end    

function sys.RemoveItem(/)
    /:Destroy()
    print("Item "../.."was removed successfully.")
end



