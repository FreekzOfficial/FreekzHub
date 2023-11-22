local Functions = {}

Functions._SRV = function(ServiceName: string)
  local Service = game:GetService(ServiceName);
  if (Service == nil or not Service) then
    error("The service \"{ServiceName}\" is not a valid service.");
    return nil;
  end
  return Service;
end

Functions._GHTTP = function(URL: string, chunkname: string, toLoadString: boolean)
  if (type(chunkname) ~= "string" or chunkname == nil) then chunkname = "contents" end
  if (toLoadString == true) then
   return loadstring(game:HttpGet(URL, chunkname)) ;
  end
  return game:HttpGet(URL, chunkname);
end

for FName, FFunc in next, Functions do
    if typeof(FFunc) == "function" then
        getgenv()[FName] = FFunc
    end
end

return Functions
