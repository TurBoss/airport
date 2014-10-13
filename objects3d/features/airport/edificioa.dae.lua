model = {
   radius = 20,
   height = 200,
   midpos = {100,15,-53}, -- model center offset
   --tex1 = "central.png", -- same as S3O texture 1
   --[[tex2 = "corraid2_512.dds", -- same as S3O texture 2
   invertteamcolor = true, -- invert tex1 alpha channel
   fliptextures = true, -- turn textures upside down
   pieces = {
      root = {
         rotate = {-90,0,0},
         offset = {10,0,0}
      },
      turret = {
         parent = "chassis",
         rotateZ = 30,
         offsetY = 20,
      }
   }]]--
}
return model
