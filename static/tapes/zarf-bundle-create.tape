Output bundle-create.gif

Set Shell "bash"
Set FontSize 24
Set Width 1800
Set Height 1040
Set TypingSpeed 50ms
# Set Framerate 60

Set MarginFill "#7600f8"
Set Margin 40

Set BorderRadius 40

Type "batcat src/test/packages/60-bundle/zarf-bundle.yaml" Sleep 500ms Enter
Sleep 4s
Type "zarf package publish build/zarf-init-amd64-v0.28.2-74-ge5b6aa14.tar.zst oci://localhost:888 --insecure" Sleep 500ms Ctrl+C Enter
Type "zarf package publish build/zarf-package-manifests-amd64-0.0.1.tar.zst oci://localhost:889 --insecure" Sleep 500ms Ctrl+C Enter
Sleep 3s
Ctrl+L
Type "zarf bundle create src/test/packages/60-bundle \" Sleep 500ms Enter
Type "  -o oci://localhost:888 \" Sleep 500ms Enter
Type "  --set INIT_VERSION=v0.28.2-74-ge5b6aa14 \" Sleep 500ms Enter
Type "  --log-level=debug \" Sleep 500ms Enter
Type "  --insecure" Sleep 500ms Enter

Sleep 3s
Type "y" Sleep 500ms Enter

Sleep 15s
