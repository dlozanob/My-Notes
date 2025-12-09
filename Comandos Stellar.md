# Comandos Stellar


## Creación del contrato


Cada vez que se hace una modificación en el contrato o se añaden funciones, se debe eliminiar el directorio target/wasm32v1.none.

Luego generarlo de nuevo.

```Powershell
rustup target add wasm32v1-none
```

Generar el contrato:

```Powershell
cargo build --target wasm32v1-none --release
```

Optimizar el contrato:

```Powershell
stellar contract optimize --wasm target/wasm32v1-none/release/<contract_name>.wasm
```

Obtener dirección del token y llave del admin:

```Powershell
stellar contract asset id --asset native --network testnet
stellar keys address admin
```

Deployar el contrato:

```Powershell
stellar contract deploy ` --wasm target/wasm32v1-none/release/<contract_name>.optimized.wasm ` --source admin ` --network testnet ` -- ` --admin <admin_public_key> --token <token_address>
```




