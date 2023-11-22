local Functions = {}

Functions._SRV = function(ServiceName: string)
  local Service = game:GetService(ServiceName);
  if (Service == nil or not Service) then
    error("The service \"{ServiceName}\" is not a valid service.");
    return nil;
  end
  return Service;
end

Functions._GHTTP = function(URL: string, toLoadString: boolean, chunkname: string)
  if (toLoadString) then
    chunkname = chunkname or "contents";
    return loadstring(game:HttpGet(URL), chunkname);
  end

  return game:HttpGet(URL);
end

for FName, FFunc in next, Functions do
    if typeof(FFunc) == "function" then
        getgenv()[FName] = FFunc
    end
end

return Functions
