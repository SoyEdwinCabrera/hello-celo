# Hello Celo

Este proyecto contiene un contrato inteligente simple llamado `HelloWorld` desarrollado en Solidity. El contrato permite saludar a un usuario con un mensaje personalizado y está diseñado para ser desplegado en la red Celo.

## Contrato Principal

El contrato principal es `HelloWorld.sol`, que incluye las siguientes funcionalidades:
- **Propietario del contrato:** El contrato almacena la dirección del propietario que lo despliega.
- **Función de saludo:** Permite generar un mensaje de saludo personalizado.

### Código del Contrato
```solidity
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract HelloWorld {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function greet(string memory name) external pure returns (string memory) {
        return string(abi.encodePacked("Hello, ", name, "!"));
    }
}
```

---

## Requisitos Previos

Antes de trabajar con este proyecto, asegúrate de tener instaladas las siguientes herramientas:

1. **Foundry**: Framework para desarrollar contratos inteligentes.
   - Instalación:
     ```bash
     curl -L https://foundry.paradigm.xyz | bash
     foundryup
     ```

2. **Node RPC para Celo**: Necesitarás un nodo RPC para interactuar con la red Celo. Puedes usar [Forno](https://docs.celo.org/getting-started/forno).

3. **Cuenta con Fondos en Celo**: Asegúrate de tener una cuenta con fondos suficientes para cubrir el gas.

---

## Comandos del Proyecto

### 1. **Instalar Dependencias**
   Si el proyecto tiene dependencias externas, instálalas con:
   ```bash
   forge install
   ```

### 2. **Compilar el Proyecto**
   Compila los contratos para verificar que no haya errores:
   ```bash
   forge build
   ```

### 3. **Ejecutar Scripts**
   Para desplegar el contrato en la red Celo:
   ```bash
   forge script script/Deploy.s.sol \
     --rpc-url https://forno.celo.org \
     --broadcast \
     --account wallet-hello-celo
   ```

### 4. **Limpiar el Caché**
   Si necesitas limpiar el caché del proyecto:
   ```bash
   forge clean
   ```

---

## Estructura del Proyecto

```
hello-celo/
├── lib/
│   └── forge-std/          # Biblioteca Forge Standard
├── src/
│   └── HelloWorld.sol      # Contrato principal
├── script/
│   └── Deploy.s.sol        # Script para desplegar el contrato
├── broadcast/
│   └── Deploy.s.sol/       # Transacciones de despliegue
├── cache/
│   └── Deploy.s.sol/       # Valores sensibles del despliegue
└── foundry.toml            # Configuración del proyecto
```

---

## Advertencias

1. **EIP-3855 no soportado en Celo:** La red Celo no soporta esta mejora de Ethereum. Si usas Solidity `>=0.8.20`, podrían surgir problemas. Asegúrate de usar una versión compatible (`^0.8.0`).

2. **Fondos Insuficientes:** Asegúrate de que la cuenta utilizada tenga fondos suficientes para cubrir el gas.

---

## Recursos Adicionales

- [Documentación de Foundry](https://book.getfoundry.sh/)
- [Documentación de Celo](https://docs.celo.org/)
- [Explorador de Celo
