--[[
    Discord: https://discord.gg/xJT9XYDHkW
    Script by 76B Store

    Copyright (c) 2023 76B Store. All rights reserved.

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.
--]]

local QBCore = exports['qb-core']:GetCoreObject()

function Show(title, content)
    SendNUIMessage({
        action = "open",
        title = title,
        content = content
    })
end

function Close()
    print("[76B Store] Closing NUI")
    SendNUIMessage({
        action = "close",
    })
end

exports("Show", Show)
exports("Close", Close)


RegisterCommand('open', function(source, args, rawCommand)
    if #args < 2 then
        Show(args[1])
        return
    end

    print(args[1])
    print("[76B Store] Opening UI with title: " .. args[1] .. ", content: " .. args[2])

    -- Assuming Show is a function defined elsewhere in your script
    Show(args[1], args[2])
end)


RegisterCommand('close', function(source, args, RawCommand)
    print("[76B Store] Closing NUI")
    Close()
end)
