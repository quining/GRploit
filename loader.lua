-- ASCII Art Text
print("  _______    _______        __         _______   __     ")
print(" /\" _   \"|  /\"      \\      /\"\"\\       |   __ \"\\ |\" \\    ")
print("(: ( \\___) |:        |    /    \\      (. |__) :)||  |   ")
print(" \\/ \\      |_____/   )   /' /\\  \\     |:  ____/ |:  |   ")
print(" //  \\ ___  //      /   //  __'  \\    (|  /     |.  |   ")
print("(:   _(  _||:  __   \\  /   /  \\\\  \\  /|__/ \\    /\\  |\\  ")
print(" \\_______) |__|  \\___)(___/    \\___)(_______)  (__\\_|_) ")
print("                                                       ")

-- Loading Effect
print("Loading", false)
for i = 1, 3 do
    wait(1) -- Wait for 1 second
    print(".", false) -- Print dots without new lines
end

print("\nDone!") -- New line after loading effect
