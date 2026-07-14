# Troubleshooting

## Fix Bluetooth

1. Open CMD with admin rights (CRTL + SHIFT + WIN)
2. `sc queryex BTAGService`
3. `taskkill /F /PID <PID>`
4. Open Task Manager and go to Services
5. Start BluetoothUserService