Output zarf-dev-deploy.gif

Set Shell "bash"
Set FontSize 24
Set Width 1900
Set Height 1100
Set TypingSpeed 50ms
Set Framerate 25

Type "# Blink and you'll miss it" Sleep 1s Ctrl+C Enter
Type "# Package `create`s are near instantaneous during `dev deploy`" Sleep 2s Ctrl+C Enter
Type "zarf dev deploy examples/dos-games" Sleep 500ms Enter
Sleep 11s
Type "# Now let's re-deploy and see how fast it is" Sleep 2s Ctrl+C Enter
Type "zarf dev deploy examples/dos-games" Sleep 500ms Enter
Sleep 5s
Type "# Pretty fast right?" Sleep 2s Ctrl+C Enter
