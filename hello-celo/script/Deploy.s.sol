// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/HelloWorld.sol";

contract DeployScript is Script {
    function run() external {
    // Inicia el broadcast: todo lo que este entre start/stop se firma y envia
    vm.startBroadcast();
    // Despliega el contracto HelloWorld
    HelloWorld deployed = new HelloWorld();
    // Opcional: emite un log con la direccion deplegada
    console.log("Contrato despleglado: ", address(deployed));
    vm.stopBroadcast(); 
    }
}
