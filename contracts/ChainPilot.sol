// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ChainPilot {

    // Event emitted when a monitored contract event is captured
    event ContractEventCaptured(address indexed contractAddress, string eventName, bytes eventData, uint256 timestamp);

    // Event emitted on proxy upgrade detection
    event ProxyUpgraded(address indexed proxyAddress, address oldImplementation, address newImplementation, uint256 timestamp);

    // Event emitted when anomaly detected (e.g. failed tx, gas spike)
    event AnomalyDetected(address indexed contractAddress, string anomalyType, string details, uint256 timestamp);

    // Struct to hold monitored contract info
    struct MonitoredContract {
        address contractAddress;
        bool isProxy;
        address implementationAddress;
        bool exists;
    }

    // Mapping of monitored contracts
    mapping(address => MonitoredContract) public monitoredContracts;

    // Only owner can add or remove contracts (for simplicity owner = deployer)
    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // Add a contract to monitoring list
    function addContract(address _contractAddress, bool _isProxy, address _implementationAddress) external onlyOwner {
        require(!monitoredContracts[_contractAddress].exists, "Contract already monitored");
        monitoredContracts[_contractAddress] = MonitoredContract(_contractAddress, _isProxy, _implementationAddress, true);
    }

    // Update proxy implementation address (detect proxy upgrade)
    function updateProxyImplementation(address _proxyAddress, address _newImplementation) external onlyOwner {
        require(monitoredContracts[_proxyAddress].exists, "Contract not monitored");
        require(monitoredContracts[_proxyAddress].isProxy, "Not a proxy contract");

        address oldImpl = monitoredContracts[_proxyAddress].implementationAddress;
        monitoredContracts[_proxyAddress].implementationAddress = _newImplementation;

        emit ProxyUpgraded(_proxyAddress, oldImpl, _newImplementation, block.timestamp);
    }

    // Function to be called by off-chain service to log a captured event
    function logContractEvent(address _contractAddress, string calldata _eventName, bytes calldata _eventData) external onlyOwner {
        require(monitoredContracts[_contractAddress].exists, "Contract not monitored");

        emit ContractEventCaptured(_contractAddress, _eventName, _eventData, block.timestamp);
    }

    // Function to log anomalies detected off-chain
    function logAnomaly(address _contractAddress, string calldata _anomalyType, string calldata _details) external onlyOwner {
        require(monitoredContracts[_contractAddress].exists, "Contract not monitored");

        emit AnomalyDetected(_contractAddress, _anomalyType, _details, block.timestamp);
    }
}
