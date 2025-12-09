# 0 a dApp con Rust + Soroban

- [Course Requirements](https://github.com/theahaco/scaffold-stellar-frontend)
- [Stellar Documentation](https://developers.stellar.org/docs)
- [Workshop 1 - Notes](https://www.notion.so/Workshop-1-Tu-primer-paso-en-Stellar-28ee30dd925b8062b298f88cafc7fc2f#28fe30dd925b80e3b207e047e1648197)
- https://linktr.ee/StellarLATAM
- https://t.me/StarMakerAmbassadorss
- https://www.blockchainacceleration.org/
- [[Comandos Stellar]]

## **Fundamentos de Stellar Classic**

![](attachments/Pasted%20image%2020251021231158.png)

Stellar es una blockchain. No utiliza mineria.

Es un sistema descentralizado, utiliza varios nodos en los que guarda las transacciones.

No se utiliza uno solo, hay riesgo de perder la informacion.

Una vez se realiza una transaccion, se propaga esta informacion a todos los nodos.
Algunos paquetes pueden perderse, duplicarse, o llegar demasiado tarde. Siendo asi, no todos los nodos tendran la misma informacion.

Cuando un nodo recibe la transaccion, evalua lo siguiente:
- Validez de la transaccion
- Fondos del remitente
- Validez de la firma

Al confirmarse como valida, el nodo guarda la transaccion en un pool de transacciones pendientes.

![](attachments/Pasted%20image%2020251021231303.png)

El proceso de consenso unifica la informacion en todos los nodos despues de evaluar la informacion en cada uno de ellos con la finalidad de llegar a un acuerdo objetivo. Tambien se acuerda el orden en el que llegan las transacciones.

>[!Note]
>*Double Spending*: Se tiene por ejemplo 10 tokens que representan criptomonedas. Se hace una transaccion de 10 tokens al mismo tiempo a 2 personas diferentes. Estas transacciones son conflictivas porque duplican la cantidad de tokens. El sistema de consenso evita este problema: Una sola transaccion se toma como valida mientras la otra se rechaza.


*Ledger*: Libro contable donde se anotan todas las transacciones registradas. Despues del sistema de consenso se anotan las transacciones hechas en esta base de datos. Contiene todas las transacciones aprobadas y actualiza los saldos en las cuentas.

1. Los usuarios envían transacciones.
2. Los nodos las validan y se ponen de acuerdo (mediante consenso).
3. Se crea un nuevo ledger que refleja el nuevo estado del sistema.
4. Este ledger es compartido por todos los nodos honestos.

*Blockchain* es una cadena de *ledgers* (bloques), unidos cronologicamente.

En *Stellar* no se usa el termino "bloque" como en *Bitcoin*, pero es el mismo concepto -> Cada *ledger* e un conjunto de transacciones confirmadas.

| **Concepto**                      | **Stellar (Ledger)**                                   | **Bitcoin (Bloque)**                           |
| --------------------------------- | ------------------------------------------------------ | ---------------------------------------------- |
| 📘 Nombre del registro            | **Ledger**                                             | **Bloque**                                     |
| 📚 Qué contiene                   | Transacciones + estado de cuentas                      | Transacciones                                  |
| ⛓️ Conectado al anterior          | Sí, por número de secuencia                            | Sí, por hash (blockchain)                      |
| ⏱️ Tiempo promedio entre unidades | ~5.19 segundos                                         | ~10 minutos                                    |
| 🔐 Mecanismo de consenso          | SCP (Stellar Consensus Protocol)                       | Proof of Work (minería)                        |
| ⚡ Velocidad de confirmación       | Rápida (~5.19 segundos)                                | Lenta (hasta 60 minutos para seguridad fuerte) |
| 💡 Finalidad ("finality")         | Inmediata y definitiva                                 | Probabilística (puede revertirse en teoría)    |
| ⚙️ Costos energéticos             | Bajos (sin minería)                                    | Altos (requiere mucha energía para minar)      |
| 🌐 Quién puede participar         | Cualquiera puede leer; nodos necesitan confianza mutua | Cualquiera puede leer y minar (público)        |
| 🔄 Recompensa por crear unidad    | No hay recompensas; hay tarifas mínimas                | Recompensa en BTC + comisiones de transacción  |

![](attachments/Pasted%20image%2020251021234132.png)

Cada usuario posee dos claves con 56 caracteres cada una:
- Clave publica (identificador)
- Clave secreta (firma)

![](attachments/Pasted%20image%2020251021234505.png)

*Horizon* es una API para consultar informacion en el sistema de *Stellar*:
- Consultar transacciones
- Enviar y firmar transacciones
- Obtener el historial y estado de la red

Redes principales de *Stellar*:
- *Testnet*
	- Entorno gratuito de pruebas con XLMs falsos para experimentar
- *Mainnet*
	- Entorno real donde se ejecutan las aplicaciones en produccion

Poseen las mismas caracteristicas a nivel de herramientas, contratos, y desempeño. Solo cambian en sus claves y parámetros de red.

Se puede migrar una aplicación en Telnet cambiando la configuración de la red *Horizon*.


## **Transacciones y seguridad**

### 🧩 **Introducción y contexto**

En Stellar, **cada acción** (enviar XLM, emitir un asset , etc.) se realiza mediante una **transacción**.

Una transacción no es más que un mensaje estructurado que contiene una o más operaciones que el usuario desea ejecutar.

Cada transacción incluye:

- **Source account:** la cuenta que envía la transacción (identificada por su clave pública).
- **Sequence number:** un número incremental que evita duplicados o replays.
- **Operations:** una lista de acciones (por ejemplo, “enviar 10 XLM a Alice”).
- **Memo (opcional):** texto o ID adicional.
- **Signature:** la firma digital del emisor, generada con su secret key.

💡 **En otras palabras:**

Una transacción en Stellar es una lista de instrucciones firmadas criptográficamente que el protocolo valida y ejecuta en segundos.

### 🔑 **Firma con secret key**

Cuando construimos una transacción, aún no está lista para enviarse a la red: primero debe **firmarse** con la **secret key** de la cuenta que la origina.

Esa firma es lo que **demuestra la propiedad y autorización** para mover los fondos.

- Si alguien intenta enviar una transacción sin la firma válida, la red la rechaza.
- Si una transacción tiene múltiples operaciones que afectan a distintas cuentas, cada una deberá firmarla.

En código, este paso se traduce en:

```tsx
transaction.sign(StellarSdk.Keypair.fromSecret(secretKey))
```

Esto agrega una firma válida al `TransactionEnvelope` que luego se enviará al Horizon Server.

### ⚙️ **Simulación y validación**

A diferencia de Soroban (que tiene el método simulateTransaction para contratos inteligentes), **las transacciones clásicas** —como pagos, creación de cuentas o trustlines— **no pueden simularse** directamente.

Con el método `simulateTransaction`, en Soroban podemos **simular** contratos inteligentes antes de ejecutarlo obteniendo:

- Códigos de éxito o error.
- Costos de ejecución estimados.
- Resultado de cada operación.

👉 Esto es esencial en el desarrollo, porque podemos **ver si una transacción fallaría antes de enviarla realmente.**

Ejemplo conceptual:

```tsx
const simulate = await rpcServer.simulateTransaction(transaction)
console.log(simulate.result)
```

Si la simulación es exitosa, podemos continuar con el envío real usando `sendTransaction`.

### 🚀 **Envío (submitTransaction)**

Una vez simulada y firmada, enviamos la transacción real:

```tsx
const response = await server.submitTransaction(transaction)
```

Si todo está correcto, Horizon devolverá un hash único (`transaction_hash`) que representa la confirmación en la red.

Podés verificarlo en **Stellar Expert** o cualquier explorador compatible.

### 🧠 **Resumen de flujo completo**

1. Construir la transacción (source, operaciones, etc.).
2. Firmarla con la secret key.
3. Simularla para validar errores y costos.
4. Enviarla (submit) a la red.
5. Confirmar resultado por hash o en un explorador.

💡 **Punto clave:**

En **Soroban**, podemos **simular** contratos inteligentes antes de ejecutarlos (simulateTransaction).

En **Horizon**, trabajamos con **transacciones clásicas**: no se simulan, pero sí se pueden **interpretar sus errores** sin perder fondos.

## **Tokens Personalizados y Claimable Balances**

En Stellar, **todos los tokens (excepto XLM)** son _assets personalizados_ emitidos por una cuenta.

Cada asset se define por **dos propiedades fundamentales**:

- `asset_code`: el nombre o símbolo del token (por ejemplo, `USDCX`, `BTCX`, `NGNX`).
- `issuer`: la cuenta que lo emite y controla su política monetaria.

👉 Esto significa que **cualquiera puede crear su propio token**, siempre que los participantes establezcan una **trustline** hacia el emisor.

Una trustline es básicamente un _vínculo de confianza_ que autoriza a mantener balances de un determinado asset en la cuenta de un usuario.

Sin esta relación de confianza, no se pueden recibir ni mantener tokens personalizados.

---

### 🏦 **Arquitectura típica: Issuer + Distributor**

En la mayoría de los casos se usan **dos cuentas distintas**:

1. **Issuer account** → crea el asset y define sus reglas (puede revocar, pausar, etc.).
2. **Distributor account** → maneja la distribución del token en circulación y realiza los pagos a usuarios.

Esta separación de responsabilidades es una _buena práctica_ para mejorar la seguridad y el control del suministro.

---

### 🎁 **Claimable Balances: transferencias diferidas**

Los **Claimable Balances** permiten enviar fondos que quedan **pendientes de ser reclamados** por una o varias cuentas, en lugar de transferirse directamente.

Cuando se crea un claimable balance, los fondos se guardan en el ledger junto con una lista de **claimants** (las cuentas autorizadas a reclamarlos) y las **condiciones** bajo las cuales pueden hacerlo, como fechas o restricciones lógicas.

En la práctica esto permite casos como:

- Envíos programados o condicionados.
- Recompensas con requisitos.
- Pagos tipo “escrow”, donde el receptor puede reclamar más adelante.

En resumen, un claimable balance actúa como una **promesa de pago registrada en la red**, lista para ser reclamada cuando se cumplan las condiciones.

>[!Note]
>El término *minting* significa acuñar. Lo que se refiere a asignar un valor de tokens a un asset personalizado. Es el proceso de añadir nuevos assets. Ejemplo: Imprimir nuevos billetes en la casa de la moneda


Cuando se transfiere un asset al issuer de este, los fondos se queman -> Se descuenta del emisor pero no se transfieren al issuer.

El issuer no puede tener findos de su propio asset, solo los crea o los destruye. El issuer está fuera del mercado de su propio token.


## **Introducción a Soroban y Rust**

### 🧱 **Qué es Soroban y por qué usarlo**

Soroban es el sistema de **contratos inteligentes de Stellar**, diseñado para permitirnos escribir lógica personalizada, almacenar datos en el ledger y crear aplicaciones financieras más complejas, manteniendo la rapidez y los bajos costos que caracterizan a Stellar. Mientras que Stellar Classic nos permite realizar transacciones predefinidas y mover activos de manera sencilla, Soroban nos da la posibilidad de programar reglas y comportamientos que antes eran imposibles de implementar directamente en la red.

Con Soroban, no solo movemos dinero; podemos automatizar flujos, definir balances, controlar permisos y responder a eventos en la blockchain de manera segura y predecible. Es, en cierto sentido, como darle cerebro a Stellar: ahora nuestras aplicaciones pueden **tomar decisiones autónomas**, reaccionar a cambios de estado y mantener toda la información importante en un ledger confiable.

Si antes nuestras aplicaciones estaban limitadas a enviar y recibir pagos o crear activos simples, ahora con Soroban podemos construir **contratos inteligentes completos**. Esto significa que podemos guardar información en el ledger, controlar quién puede ejecutar ciertas acciones, y definir la lógica de negocio de forma que sea completamente transparente, segura y auditable.

Soroban convierte a Stellar en una plataforma mucho más versátil, sin perder las ventajas de eficiencia, bajo costo y velocidad que ya conocemos. Las transacciones siguen siendo rápidas y económicas, pero ahora tenemos **control completo sobre la lógica que corre en la red**, lo que abre un abanico enorme de posibilidades para construir aplicaciones financieras descentralizadas (dApps), automatizar pagos recurrentes, manejar tokens personalizados o incluso implementar mecanismos de gobernanza dentro de un ecosistema Stellar.

💡 _Diferencias clave con Stellar Classic:_

- **Stellar Classic:** transacciones predefinidas, assets y pagos.
- **Soroban:** contratos programables, almacenamiento persistente y lógica personalizada.
- Combina la **seguridad y eficiencia de Stellar** con la **flexibilidad de los smart contracts**.

> “Soroban nos da la capacidad de definir reglas y automatizar decisiones en la blockchain, algo que antes no podíamos hacer directamente en Stellar.”

### 🔹 **Funciones `initialize` vs `__constructor` en Soroban**

En Soroban existen dos formas principales de inicializar el **estado de un contrato** cuando se despliega:

---

#### 1️⃣ **`__constructor`**

- Es una función **especial de Soroban** que se ejecuta **automáticamente al deploy** del contrato.
- Solo se ejecuta **una vez**, no puede llamarse manualmente después.
- Se utiliza para **setear directamente el estado inicial** (como admin, balances o variables de control) **en el momento de crear el contrato**.

**Ventajas:**

1. **Simplicidad:** No necesitas llamar a otra función después del deploy; el contrato ya queda inicializado automáticamente.
2. **Seguridad:** Al ser invocable solo durante el deploy, no corre riesgo de ser ejecutada por error más adelante.
3. **Atomicidad:** La inicialización ocurre en la misma transacción que el deploy, asegurando que el estado inicial y el contrato existan juntos.

**Desventajas:**

1. **Menos flexibilidad:** No podés modificar el estado inicial después del deploy sin hacer un nuevo contrato.
2. **Dificultad para testing separado:** Si querés probar la lógica de **`__constructor`** por separado en tests, es más complejo porque el constructor siempre corre con el deploy.
3. **Errores en deploy son críticos:** Si el constructor falla durante el deploy, el contrato no se puede crear, y hay que redeployar nuevamente.

💡 **Uso típico:** Contratos que no necesitan cambios de estado inicial después del deploy, o que queremos que estén listos para usar de inmediato sin pasos adicionales.

---

#### 2️⃣ **`initialize`**

- Es una función **manual** que definimos en nuestro contrato y llamamos **una sola vez después del deploy**.
- Se suele usar para **setear valores iniciales** (admin, balances, tokens) **de forma explícita** después de que el contrato ya está en la blockchain.

**Ventajas:**

1. **Flexibilidad:** Podés decidir **cuándo y cómo inicializar** el contrato, incluso después de haberlo desplegado.
2. **Testing más fácil:** Es más sencillo simular diferentes escenarios en tests, llamando a `initialize` varias veces en entornos controlados.
3. **Despliegue modular:** El contrato se puede desplegar primero, y la inicialización se hace cuando el estado o las variables de configuración estén listas.

**Desventajas:**

1. **Riesgo de olvidarse:** Si no llamás a `initialize`, el contrato queda sin estado inicial y puede generar errores al intentar usarlo.
2. **Seguridad:** Hay que proteger `initialize` para que **solo pueda ser llamada una vez** y no sea invocada por cualquier usuario.
3. **Transacción extra:** Requiere una llamada adicional al contrato, generando una **transacción separada** y un costo de fees extra.

💡 **Uso típico:** Contratos que necesitan **mayor control sobre la inicialización**, o donde el estado inicial depende de datos externos que no están disponibles al momento del deploy.

### 🔹 **Recomendación según tu caso**

Si tus contratos **siempre inicializan con valores conocidos al momento del deploy** y no necesitás cambiar nada después, **usar `__constructor` es más conveniente**:

- No hay riesgo de olvidarse de inicializar.
- El contrato queda listo para usar de inmediato.
- Simplifica el flujo de deploy y reduce transacciones.

Si tu contrato **requiere inicialización condicional o datos que se obtienen después del deploy**, entonces conviene `initialize`:

- Permite configurar el estado cuando tengas toda la información.
- Facilita tests separados y simulaciones antes de producción.

### 🔹 **Estructura de `Cargo.toml` en contratos Soroban**

Cuando trabajamos con Soroban, **cada contrato de Rust viene acompañado de un archivo `Cargo.toml`**, que es esencialmente la **configuración del proyecto** y nos dice a Cargo (el gestor de paquetes y compilación de Rust) cómo compilar y enlazar nuestro contrato.

Este archivo define **dependencias, versión del paquete, metadatos y configuraciones específicas** necesarias para desplegar y ejecutar el contrato en Soroban.

#### **1️⃣ Secciones principales de `Cargo.toml`**

Un `Cargo.toml` típico para un contrato Soroban tiene varias secciones importantes:

#### `[package]`

Define información básica del contrato:

- **name:** el nombre del contrato.
- **version:** versión del contrato, útil para control de releases y upgrades.
- **edition:** versión de Rust utilizada (generalmente `"2021"`).

💡 _Ejemplo:_

```rust
[package]
name = "my_wallet"
version = "0.1.0"
edition = "2021"
```

#### `[dependencies]`

Aquí listamos las **librerías externas** que nuestro contrato necesita para compilar y funcionar.

- Para Soroban, generalmente incluimos la librería de **`soroban-sdk`, q**ue nos da acceso a funciones para almacenamien**to, eventos, tipos de datos y llamadas a otros contratos**.
- También podríamos usar crates estándar de Rust si necesitamos lógica adicional, pero **en Soroban no tenemos acceso completo a la librería estándar de Rust**, por lo que **no podemos instalar cualquier paquete que queramos**. Solo podemos usar crates que sean **compatibles con compilación a WebAssembly (Wasm)** y que respeten las restricciones del entorno Soroban.

💡 _Ejemplo:_

```rust
[dependencies]
soroban-sdk = "0.21.0"
```

#### `[lib]`

Define cómo se compila nuestro contrato en **Wasm**, que es el formato que Soroban entiende:

- **crate-type = ["cdylib"]** indica que el output será un **Wasm dinámico** listo para desplegar.

💡 _Ejemplo:_

```rust
[lib]
crate-type = ["cdylib"]
```

Sin esto, el contrato no se podría compilar correctamente para la red Soroban.

#### `[profile.release]` _(opcional pero recomendado)_

Configura **cómo se optimiza el contrato para producción**, incluyendo reducción de tamaño y mejoras de rendimiento.

💡 _Ejemplo:_

```rust
[profile.release]
opt-level = "z"  # optimización máxima para tamaño reducido
```

Esto es importante porque los contratos en Soroban deben ser **lo más livianos posible**, y cada byte cuenta para los costos de despliegue y ejecución.

### **Resumen práctico**

El `Cargo.toml` es como **el plano de nuestro contrato**. Nos permite:

- Definir **nombre y versión** del contrato.
- Especificar las **dependencias** necesarias para programar en Soroban.
- Configurar la **compilación a Wasm** para que el contrato sea ejecutable en la blockchain.
- Ajustar parámetros de optimización para **ahorrar espacio y costos** en producción.


## **Storage en el Contrato**


### 🔹 Importancia del almacenamiento en un contrato

El almacenamien**to** de un contrato en Soroban es el lugar donde guardamos el **estado crítico del contrato**, es decir, la información que define cómo funciona la dApp en la blockchain y que debe ser **persistente, segura y accesible para todos los usuarios de la red**.

Es importante **no guardar todo** en el contrato. Solo debemos almacenar lo **esencial para la lógica y la seguridad**. Por ejemplo, al usuario conviene guardar únicamente su **public key**, porque es única y necesaria para identificarlo y validar sus acciones.

En cambio, información como el nombre completo del usuario, su DNI o datos sensibles **no necesita ir en la blockchain**, ya que no afecta la lógica del contrato y es mejor mantenerla off-chain por privacidad.

En cambio, sí debemos almacenar datos como el estado de un auto (si está disponible o alquilado), o los balances de un token, porque son críticos para la gestión de reservas y transacciones.

**Concepto clave:** el contrato guarda únicamente lo que **impacta la lógica del sistema**, dejando afuera datos pesados o sensibles. Esto ahorra costos de ejecución y protege la privacidad de los usuarios.

---

### 🔹 Tipos de almacenamiento en Soroban

Soroban ofrece **tres tipos principales de almacenamiento**, cada uno con características y usos específicos:

**1️⃣ Persistent Storage (Persistente)**

Este almacenamiento mantiene los datos **permanentemente en la blockchain** mientras el contrato exista. Es ideal para información que siempre necesitaremos para la lógica del contrato, como balances de usuarios, ownership de assets, estados de reservas o roles administrativos. Por ejemplo, podemos guardar la dirección del admin, la lista de autos disponibles o el historial de alquileres confirmados.

Es importante recordar que **Persistent Storage genera costos en el ledger**, por lo que solo debemos almacenar lo estrictamente necesario. Además, cuando el TTL llega a cero, los datos se archivan y pueden ser restaurados automáticamente mediante operaciones del contrato o manualmente si fuese necesario. Esto asegura que la información crítica no se pierda y pueda ser consultada en cualquier momento.

**2️⃣ Temporary Storage (Temporal)**

Este tipo de almacenamiento guarda los datos **solo durante la vida útil de la transacción o hasta que el TTL llegue a 0**. Es el más económico y útil para información que es **temporal y fácilmente recreable**, como resultados intermedios de cálculos, flags de validación o datos de simulaciones.

Por ejemplo, al procesar una reserva podríamos usar Temporary Storage para almacenar un flag de validación o un precio calculado momentáneamente. Al finalizar la transacción, estos datos se borran automáticamente y **no ocupan espacio en el ledger permanente**, lo que ayuda a mantener bajos los costos y el ledger limpio.

**3️⃣ Instance Storage**

Este almacenamiento está ligado a **instancias específicas dentro del contrato** y es útil cuando necesitamos **estructuras dinámicas o compartidas que no pueden ser temporales**. Instance Storage se comporta de manera similar al Persistent Storage en términos de restauración cuando el TTL llega a cero, pero comparte el TTL de la instancia del contrato.

Por ejemplo, podemos asociar a cada usuario su propio espacio de almacenamiento para mantener registros independientes de cada auto alquilado usando algo como `Rent(Address, Car)`. También es útil para metadata del contrato o datos compartidos entre varias funciones que no pueden ser temporales, como los datos de configuración de roles o permisos.

Al elegir Instance Storage debemos considerar que **el espacio es limitado**, por lo que conviene reservarlo para información que realmente necesita ser compartida o persistir durante la vida de la instancia, sin sobrecargar el ledger.

---

### 🔹 Extender el TTL (Time-To-Live)

En Soroban, algunos datos pueden tener un **TTL**, que indica cuánto tiempo permanecerán activos antes de ser **archivados o eliminados automáticamente**. Esto es clave para optimizar costos y mantener el ledger limpio, evitando que información temporal ocupe espacio permanentemente.

Por ejemplo, un intento de reserva podría almacenarse en **Temporary Storage** con un TTL de 24 horas. Si la reserva no se confirma, los datos se eliminan automáticamente. En **Instance** o **Persistent Storage**, el TTL permite archivar datos cuando el contrato o la instancia no está activa, pero siempre pueden restaurarse automáticamente o mediante operaciones manuales si se necesitan más adelante.

---

💡 **Resumen:**

- Guardar en el contrato **solo la información necesaria para la lógica y la seguridad**, evitando datos personales irrelevantes (como DNI o nombre completo del usuario).
- Elegir el **tipo de storage** según la duración, persistencia y estructura de los datos: Temporary para datos recreables y efímeros, Instance para estructuras dinámicas ligadas a usuarios o entidades del contrato, y Persistent para información crítica que siempre debe mantenerse.
- Usar **TTL estratégicamente** para datos temporales o de validación, optimizando **costos, eficiencia y limpieza del ledger**.

### 🔹 Recursos recomendados

Para profundizar en el almacenamiento y las buenas prácticas en Soroban y Stellar:

- **Documentación oficial sobre Tipos de almacenamiento:**
    - [Contract Data Type](https://developers.stellar.org/docs/learn/fundamentals/contract-development/storage/state-archival#contract-data-type-descriptions)
- **Guía sobre Time to Live (TTL):**
    - [Live Until Ledger](https://developers.stellar.org/docs/learn/fundamentals/contract-development/storage/state-archival#live-until-ledger)


## **Depósito y Retiro en Contratos Soroban**

### **Función `deposit`**

La función `deposit` tiene como objetivo **recibir fondos desde un usuario y registrarlos dentro del contrato**, asignándolos al usuario, al auto o al flujo específico que corresponda. Esta función usualmente recibe al menos dos parámetros: la cantidad de tokens a depositar y la cuenta del usuario que realiza el depósito.

Internamente, `deposit` realiza varias operaciones clave:

1. **Verificación de la transacción:** se asegura de que la cantidad enviada sea válida y mayor a cero.
2. **Actualización del balance interno:** incrementa el balance registrado en el contrato, ya sea a nivel de usuario, a nivel de auto o a nivel global, según cómo esté definido el flujo.
3. **Registro de eventos:** opcionalmente, genera un log o evento que permita auditar que un depósito se realizó correctamente, lo que es útil para pruebas unitarias y trazabilidad.

En el contexto del alquiler de autos, cuando un usuario deposita dinero para reservar un auto, `deposit` asegura que esos fondos queden **bloqueados dentro del contrato** hasta que la operación de alquiler se complete. Esto garantiza que el propietario del auto no pueda retirar fondos que no corresponden y que el usuario tenga un registro claro de su pago.

💡 Concepto clave: `deposit` no transfiere automáticamente dinero a otra cuenta; solo **modifica los balances internos del contrato** y prepara el terreno para que un retiro posterior pueda realizarse de manera controlada.

### **Función `withdraw`**

La función `withdraw` es la encargada de **liberar los fondos que se encuentran dentro del contrato**, permitiendo que una cuenta pueda retirar parte o la totalidad del balance disponible. Si `deposit` representa el ingreso de dinero al sistema, `withdraw` simboliza su salida controlada.

En términos simples, `withdraw` **traslada fondos desde el contrato hacia una cuenta externa**, reflejando ese movimiento tanto en el estado de la blockchain como en los registros internos del contrato.

Internamente, la función realiza tres pasos fundamentales:

1. **Identificación del monto a retirar:** el contrato recibe como parámetro la cantidad que se desea retirar. Este valor se utiliza para calcular cuánto se debe descontar del balance interno.
2. **Actualización del balance:** se reduce el registro del balance almacenado para el usuario o flujo correspondiente. Es decir, el contrato “anota” que esa cantidad ya no pertenece a su contabilidad interna.
3. **Transferencia de los fondos:** finalmente, el contrato ejecuta una instrucción que mueve los tokens o el valor en cuestión hacia la cuenta destino. Esta acción es la que se refleja en la red, cambiando efectivamente la posesión de los fondos.

💡 **Concepto clave:**

Mientras que `deposit` acumula valor dentro del contrato, `withdraw` representa el momento en que ese valor **sale y vuelve al control del usuario o beneficiario**. Ambos procesos son complementarios: uno incrementa los balances del contrato y el otro los reduce.

En el caso del **alquiler de autos**, esta función se usa cuando el flujo ya se completó.

Por ejemplo:

- Un usuario realiza un depósito para alquilar un auto.
- El contrato mantiene esos fondos bloqueados durante el período de alquiler.
- Al finalizar, se ejecuta `withdraw` para transferir el pago al propietario del auto o liberar el dinero correspondiente.

Esta operación refleja el cierre natural de un ciclo financiero dentro de la blockchain: el contrato custodia temporalmente los fondos, y `withdraw` actúa como la “salida segura” de ese dinero.

### **Conexión con el flujo de alquiler de autos**

Comprender `deposit` y `withdraw` nos permite visualizar la **base operativa del sistema de alquiler**: un flujo de entrada y salida de fondos que asegura trazabilidad y control.

Este mecanismo sienta las bases para extender la lógica en futuras clases, donde agregaremos validaciones, pagos parciales, reembolsos y soporte para múltiples activos o vehículos.

💡 **Punto clave:**

Dominar estas funciones es esencial para entender cómo los contratos inteligentes administran valor dentro de Stellar, manteniendo la consistencia del sistema y permitiendo construir operaciones más complejas sobre una estructura simple y confiable.


## Manejo de Errores

### 🔹 **Teoría de manejo de errores**

El manejo de errores en Rust y Soroban es una parte esencial del desarrollo seguro. A diferencia de otros lenguajes, Rust **no permite ignorar los errores** ni continuar la ejecución cuando algo sale mal.

Cada posible error debe ser **anticipado, controlado y comunicado explícitamente** al resto del sistema. Esto nos obliga a escribir **código más robusto, confiable y predecible**, lo cual es clave en el contexto de los contratos inteligentes, donde una falla puede tener consecuencias irreversibles.

Cuando hablamos de errores en Soroban, no solo nos referimos a fallos del sistema o del compilador. También hablamos de **errores lógicos dentro de la lógica del contrato**, como intentar alquilar un auto que ya está reservado, retirar fondos sin saldo suficiente o intentar acceder a un registro inexistente.

El manejo de errores nos permite **interceptar y comunicar** estas situaciones antes de que generen un comportamiento inesperado o una pérdida de fondos.

Un buen manejo de errores mejora la **experiencia del desarrollador y del usuario**, ya que permite entender rápidamente qué salió mal y en qué parte del contrato ocurrió. Además, evita que el contrato quede en un **estado inconsistente** o con datos corruptos luego de una ejecución fallida.

### 🔹 **Buenas prácticas de manejo de errores**

El principio más importante es **anticipar los fallos antes de que ocurran**. Un contrato bien diseñado no se limita a reaccionar ante errores, sino que **valida constantemente sus entradas, estados y permisos** antes de ejecutar cualquier operación crítica.

Por ejemplo, si un usuario intenta realizar un `deposit` sin saldo suficiente, el contrato debe detectar esta situación y devolver un error claro, en lugar de permitir que la transacción continúe parcialmente.

Otra buena práctica es **definir un conjunto de errores bien estructurados** mediante un `enum` que agrupe todos los posibles errores del contrato. Esto permite manejar los fallos de forma más expresiva y reutilizable, en lugar de depender de mensajes genéricos o valores mágicos.

Cada error debe tener un **significado claro y un propósito específico**, de modo que tanto el desarrollador como el usuario puedan entender rápidamente la causa del fallo.

También es recomendable **mantener los errores simples y consistentes**, evitando duplicar mensajes o crear demasiadas variantes que compliquen el mantenimiento. Un contrato debe comunicar solo lo esencial: qué salió mal, por qué ocurrió y cómo prevenirlo.

### 🔹 **El tipo `Result` en Rust y Soroban**

Rust maneja los errores de forma segura mediante el tipo `Result`, una estructura que representa **dos posibles resultados de una operación**:

un caso exitoso (`Ok`) o un caso fallido (`Err`).

En Soroban, este patrón se utiliza para todas las funciones que pueden fallar, permitiendo que el contrato **devuelva un resultado válido o un error explícito** sin detener la ejecución global del sistema.

Por ejemplo, al intentar verificar el estado de un auto, la función podría devolver `Ok(car.car_status)` si todo salió bien, o `Err(CarNotFound)` si no encuentra el auto dentro del almacenamiento.

Esto nos da un **control total sobre el flujo de ejecución**, evitando fallos inesperados y garantizando que cada operación tenga un desenlace claro y manejable.

El tipo `Result` también fomenta un estilo de programación **funcional y segura**, donde cada paso depende del resultado del anterior. Si un paso falla, el error se propaga y puede ser manejado o comunicado sin afectar al resto del contrato.


## **Eventos y Autenticación**

### 🔹 Eventos en un contrato inteligente y su relevancia

Los eventos son mensajes que el contrato **emite cada vez que ocurre una acción relevante**, como la creación de un alquiler, un depósito o un retiro. Su función principal es **notificar de manera inmediata que algo sucedió** dentro del contrato, permitiendo que cualquier sistema externo o interfaz pueda reaccionar a esos cambios sin necesidad de consultar repetidamente el estado del contrato.

Al integrar eventos, podemos construir un **registro confiable de todas las operaciones críticas**, lo que facilita el seguimiento de acciones por parte de los usuarios y de los administradores, además de mejorar la **trazabilidad y transparencia**. Los eventos permiten también separar la lógica interna del contrato de la manera en que se presentan los datos, ofreciendo un **canal seguro y eficiente para comunicar resultados** y actualizaciones importantes.

En el contexto de nuestro contrato de alquiler de autos, por ejemplo, cada vez que un auto se alquila o se realiza un pago, un evento nos permite **saber exactamente qué usuario hizo qué acción y cuándo**, sin necesidad de revisar manualmente cada registro en el almacenamiento del contrato. Esto asegura que la información que recibimos es **fiable y verificable**, y ayuda a **detectar errores o inconsistencias rápidamente**.

### 🔹 Autenticación de usuarios y control de permisos

La autenticación en un contrato inteligente nos permite **verificar que el usuario que invoca una función es efectivamente quien dice ser**, es decir, que posee la clave privada correspondiente a la dirección que firma la transacción. Esto es fundamental para **garantizar la seguridad y la integridad de las operaciones**, evitando que terceros no autorizados ejecuten acciones que podrían comprometer el contrato o afectar a otros usuarios.

Gracias a la autenticación, podemos **controlar qué tipo de usuario puede ejecutar cada función** de nuestro contrato. Por ejemplo, en nuestro sistema de alquiler de autos, ciertas funciones deben estar restringidas: únicamente el admin puede agregar autos nuevos o eliminarlos, mientras que solo el dueño de un auto puede cobrar un pago asociado a su vehículo. Esto permite implementar **reglas claras de acceso y responsabilidad**, asegurando que cada acción tenga un actor legítimo detrás y que todas las operaciones sean trazables y confiables.

En resumen, la autenticación no solo protege los fondos y recursos dentro del contrato, sino que también nos brinda un mecanismo para **organizar roles y permisos**, haciendo que la interacción con el contrato sea segura, ordenada y transparente.


## **Auditoría de Contratos Inteligentes en Soroban con Scout Audit **

### 🔹 Importancia de la auditoría

En el desarrollo de contratos inteligentes, **un solo error puede ser crítico**, porque cualquier fallo en la lógica o en el manejo de datos se refleja directamente en la blockchain, donde **las transacciones son irreversibles**.

Aunque el testing unitario o la ejecución en testnet nos permiten validar funcionalidad, **no siempre detectan todos los riesgos**. Algunos errores sutiles, como accesos indebidos, operaciones aritméticas inseguras o desbordamientos (`overflow`) solo pueden detectarse mediante **análisis estático** del código.

Aquí es donde la **auditoría de contratos** se vuelve esencial:

- **Seguridad:** detectar posibles exploits antes de que alguien los aproveche.
- **Robustez:** asegurar que todas las funciones manejen correctamente errores y valores inesperados.
- **Cumplimiento:** cumplir buenas prácticas de desarrollo y estándares de la blockchain.
- **Ahorro de costos:** prevenir pérdidas económicas al evitar bugs que se ejecuten en producción.

**Concepto clave:** Auditoría = revisar el código **desde la perspectiva de seguridad y fiabilidad**, no solo de funcionalidad.

### 🔹 Qué es Scout Audit

**Scout Audit** es una herramienta de **análisis estático para contratos Soroban**, diseñada para:

1. **Analizar código Rust de contratos inteligentes** sin necesidad de ejecutar la blockchain.
2. Detectar **errores comunes que los tests no cubren**, como:
    - Uso de `.unwrap()` o `.expect()` sin control, que puede provocar panic.
    - Operaciones aritméticas inseguras (`balance += amount`) sin `checked_add()`.
    - Accesos a storage sin validación de existencia.
    - Falta de verificación de permisos o roles.
3. Generar un **reporte claro con hallazgos**, indicando el riesgo y sugerencias de corrección.
4. Integrarse en **flujos de desarrollo y CI/CD**, para auditar automáticamente el código antes de deploys.

Scout Audit nos permite tener un **primer nivel de defensa** antes de ejecutar tests o desplegar el contrato, asegurando que:

- La lógica de almacenamiento y modificación de datos es segura.
- Las funciones críticas no pueden ser explotadas por usuarios maliciosos.
- Todos los errores potenciales se manejan de forma explícita, reduciendo la probabilidad de fallos en producción.

#### **Claves de auditoría:**

- Detectar errores que el testing no ve.
- Revisar puntos críticos de seguridad y persistencia.
- Mejorar la calidad del código antes de ponerlo en la blockchain.

### 🔹 Recursos de Scout Audit

Para profundizar en la auditoría y las buenas prácticas en contratos Soroban:

- **Página oficial:**
    - [Official Website](https://www.coinfabrik.com/products/scout/)
- **Repositorio oficial:**
    - [GitHub](https://github.com/CoinFabrik/scout-audit?tab=readme-ov-file)
- **Documentación:**
    - [Getting Started](https://coinfabrik.github.io/scout-audit/docs/intro/)


## **Integración y dApp final**
### 🔹 **Teoría de seguridad y conexión en dApps Stellar**

El desarrollo de aplicaciones descentralizadas en Stellar implica conectar varios componentes críticos: el contrato en Soroban, el frontend web y la wallet del usuario.

Cada uno cumple una función específica, y su correcta interacción garantiza tanto la **seguridad** como la **usabilidad** del sistema.

A diferencia de las aplicaciones tradicionales, donde la identidad se gestiona mediante usuarios y contraseñas, en una dApp la identidad está **vinculada a la clave criptográfica del usuario**.

Esto transforma completamente la forma en que se autentican, firman y ejecutan las acciones dentro de la aplicación.

A continuación exploraremos tres pilares fundamentales de esta arquitectura segura.

---

### 🔐 **1. Gestión segura de claves privadas**

La clave privada es el **elemento más sensible** del ecosistema Stellar: otorga el control total sobre una cuenta y permite firmar transacciones en la red.

Por eso, **nunca debe almacenarse ni manejarse directamente desde el frontend**.

En las **aplicaciones descentralizadas** modernas, este problema se resuelve mediante herramientas como **Stellar Wallet Kit**, que actúan como **intermediarios seguros** entre el usuario y la aplicación.

El proceso es el siguiente:

1. El usuario **conecta su wallet** desde la interfaz.
2. La aplicación solicita la ejecución de una transacción.
3. La wallet **firma la transacción localmente**, sin exponer la clave privada.
4. El frontend solo recibe la firma y la envía a la red.

Este modelo de “firma local” garantiza que **las llaves privadas nunca abandonen el dispositivo del usuario**, y que ninguna aplicación externa pueda acceder a ellas.

Además, la wallet valida los datos antes de firmar, lo que evita ataques comunes como **transacciones maliciosas o redirecciones a contratos falsos**.

👉 En resumen, **la seguridad en Stellar depende del aislamiento de la clave privada**, y como desarrolladorres debemos diseñar el flujo de conexión y firma de manera que ninguna parte del sistema tenga acceso directo a ella.

---

### 🧠 **2. Arquitectura de conexión: Frontend → Wallet → Contrato**

La arquitectura de una aplicación descentralizada en Stellar se compone de tres capas bien definidas, que trabajan de manera coordinada pero separada:

1. **Frontend:**
    
    Es la interfaz de usuario que muestra los datos y permite interactuar con las funciones del contrato.
    
    Aquí se implementa la lógica de negocio visual, pero **nunca la lógica del contrato ni las llaves**.
    
2. **Wallet Provider (Stellar Wallet Kit):**
    
    Es el **puente criptográfico** entre la aplicación y la cuenta del usuario.
    
    Gestiona la conexión, autorización y firma de las transacciones.
    
    Su función es permitir que el usuario actúe en la red sin comprometer su seguridad.
    
3. **Contrato inteligente (Soroban):**
    
    Es el núcleo lógico del sistema, donde se definen las reglas de negocio:
    
    quién puede alquilar, cuánto pagar, cómo distribuir fondos, etc.
    
    El contrato no tiene conocimiento del frontend ni de la wallet; **solo procesa direcciones y valores firmados válidos**.
    

El flujo completo es:

1. El usuario se conecta a la aplicación mediante su wallet.
2. El frontend construye una transacción y la envía a la wallet para firmar.
3. La wallet firma y devuelve la transacción.
4. El contrato ejecuta la función correspondiente (por ejemplo, `rental` o `payout_owner`).
5. El frontend muestra el resultado en tiempo real mediante los eventos del contrato.

👉 Este flujo garantiza una **arquitectura descentralizada, segura y auditable**, donde cada capa cumple su rol sin interferir con la otra.

---

### 🧩 **3. Principio de Mínimo Conocimiento y Desacoplamiento**

Un principio esencial en el diseño seguro de **aplicaciones descentralizada** (Least Knowledge Principle): cada componente del sistema debe **conocer solo la información estrictamente necesaria para cumplir su función**.

En el contexto de Stellar:

- El **frontend** no debe conocer ni almacenar las claves privadas.
- La **wallet** no necesita conocer la lógica interna del contrato, solo los datos que firma.
- El **contrato** no necesita saber quién es el usuario fuera de la red; solo valida direcciones y permisos on-chain.

Este desacoplamiento mejora la seguridad y la mantenibilidad del proyecto.

Si una parte del sistema falla (por ejemplo, una wallet deja de funcionar o un frontend se actualiza), **el resto de los componentes sigue operando con normalidad**.

Además, aplicar este principio ayuda a crear **infraestructuras más auditables y modulares**, facilitando que otros desarrolladores o equipos puedan contribuir sin comprometer la integridad del sistema.

👉 En definitiva, una aplicación descentralizada bien diseñada no solo es funcional: es **segura por diseño**, porque cada módulo tiene límites claros y responsabilidades bien definidas.

### 🔹 Qué es Stellar Wallet Kit

**Stellar Wallet Kit** es una librería que permite conectar **aplicaciones descentralizadas (dApps)** con las **wallets del ecosistema Stellar** de forma segura y estandarizada.

Su función es **gestionar la conexión, autenticación y firma de transacciones** directamente desde la wallet del usuario, evitando que la aplicación manipule claves privadas o datos sensibles.

#### **Principales características:**

- 🔐 **Autenticación descentralizada:** los usuarios se conectan usando su wallet (Freighter, Rabet, xBull, entre otras), sin necesidad de contraseñas ni cuentas adicionales.
- ⚙️ **Firma local de transacciones:** nuestra aplicación construye la transacción y la wallet se encarga de firmarlas y enviarlas a la red, garantizando seguridad y trazabilidad.
- 🌐 **Compatibilidad completa:** funciona tanto en **testnet** como en **mainnet**, y permite interactuar con **contratos Soroban** directamente desde el frontend de la aplicación, simplificando la comunicación con la blockchain.
- 🧠 **Gestión de sesión y eventos:** permite detectar cambios de red, cuenta o estado de conexión en tiempo real para mantener la UI sincronizada.

#### **Ventajas principales:**

- **Seguridad por diseño:** las claves privadas nunca abandonan la wallet.
- **Simplicidad de integración:** abstrae los detalles técnicos de las firmas y la comunicación con la red.
- **Interoperabilidad:** permite integrar múltiples wallets con una misma lógica de conexión.

### 🔹 Recursos de Stellar Wallet Kit

Para profundizar en la auditoría y las buenas prácticas en contratos Soroban:

- **Repositorio oficial:**
    - [GitHub](https://github.com/Creit-Tech/Stellar-Wallets-Kit)
- **Documentación:**
    - [Getting Started](https://stellarwalletskit.dev/)

### 🔹 **Freighter Wallet**

**Freighter** es una wallet para Stellar diseñada para **usuarios y desarrolladores**, que permite:

- Gestionar **llaves privadas de forma segura** sin exponerlas al frontend.
- Conectarse a **testnet y mainnet**, facilitando interacciones con la blockchain Stellar.
- Firmar transacciones y operaciones de **contratos Soroban** directamente desde el navegador.
- Integrarse fácilmente con **Stellar Wallet Kit** y aplicaciones descentralizadas, asegurando un flujo seguro y controlado entre usuario, frontend y contrato.

#### 🔹 Recursos de **Freighter Wallet**

Para profundizar en la auditoría y las buenas prácticas en contratos Soroban:

- **Página oficial:**
    - [Official Website](https://www.freighter.app/)
