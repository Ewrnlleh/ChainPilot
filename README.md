# ChainPilot

![Team_Logo](https://github.com/Ewrnlleh/ChainPilot/blob/main/ChatGPT%20Image%20Jun%204%2C%202025%2C%2008_38_43%20PM.png)

## About Me

I’m Emrullah Can, a computer science graduate from Sakarya University (2022). After finishing my degree, I joined the Rise In Full Stack bootcamp to deepen my development skills. I have a strong passion for cinema and design, which inspires my creative side. Alongside coding, I’m very interested in cybersecurity, always eager to learn how to protect systems and data. I enjoy combining my technical knowledge with creativity to build secure and user-friendly projects.

## Description

ChainPilot is a smart contract monitoring platform built on Scroll Blockchain. It provides a real-time, visual dashboard to track contract activity across multiple chains like Ethereum, Polygon, BNB Chain, and Arbitrum. Users can easily deploy and manage contracts through a single interface. ChainPilot lets you create custom workflows without code—trigger alerts, webhooks, or updates when specific contract events occur. It detects failed transactions, unusual gas usage, and behavior anomalies instantly. You’ll also get notified of proxy logic changes or suspicious redeployments, helping you stay ahead of security risks.

## Vision

Our vision for ChainPilot is to become the leading Web3 DevOps platform for smart contract management after deployment. We aim to make smart contract operations simple, secure, and fully automated, so all Web3 teams—big or small—can easily monitor and control their contracts. By providing clear insights and real-time alerts, ChainPilot will help prevent security risks and reduce manual work. This will empower developers to focus on building better blockchain applications while trusting that their contracts are safe and performing well across multiple chains. We believe ChainPilot will drive wider adoption and trust in Web3 technology.

## Project Roadmap / Future Plans

ChainPilot Software Development Plan

Smart Contract Event Tracking Module
Develop core smart contract functions to listen for and capture events from multiple blockchains (Ethereum, Polygon, BNB Chain, Arbitrum, Scroll). Define variables to store event data, transaction status, gas usage, and contract metadata. Ensure support for proxy contracts and logic upgrades detection.

Workflow Automation Engine
Build smart contract logic to link detected events with automated actions like alerts, webhook calls, and external system updates. Variables will include triggers, action types, and user-defined conditions. Enable no-code configuration for flexibility.

Contract Deployment & Management Interface
Create functions to deploy, register, and manage smart contracts across supported chains. Store contract addresses, chain info, and deployment status securely.

Anomaly Detection & Notification System
Implement real-time monitoring of transaction failures, gas spikes, and unusual behaviors. Define alert thresholds and variables to track anomalies. Integrate notification triggers for proxy updates and suspicious redeployments.

Front-End Development
Design and develop a unified, user-friendly dashboard showing live contract activity, workflows, analytics, and notifications. Enable easy contract deployment and workflow setup with no coding required.

Deployment & Testing
Deploy smart contracts on Scroll Blockchain and integrate with front-end. Conduct thorough testing across supported chains to ensure reliability, security, and performance before launch.

## The Tech We Use

Rust & Web3

## Smart Contract Address

XXXXXXXXXXXXXXXXX

## Setup Environment

ChainPilot
Installation
Follow these steps to set up ChainPilot locally:

Prerequisites
Node.js (v16 or higher)

npm or yarn

Git

Access to supported blockchain networks (Ethereum, Polygon, BNB Chain, Arbitrum, Scroll) via RPC URLs or wallet providers

Steps
Clone the repository


git clone https://github.com/your-username/chainpilot.git
cd chainpilot
Install dependencies
Using npm:


npm install
Or using yarn:


yarn install
Configure environment variables
Create a .env file in the root folder and add your blockchain RPC URLs, API keys, and other necessary configuration. Example:


ETHEREUM_RPC_URL=https://mainnet.infura.io/v3/YOUR_INFURA_KEY
POLYGON_RPC_URL=https://polygon-rpc.com
BNB_RPC_URL=https://bsc-dataseed.binance.org/
ARBITRUM_RPC_URL=https://arb1.arbitrum.io/rpc
SCROLL_RPC_URL=https://scroll.io/rpc
Start the development server


npm run dev
or


yarn dev
Access the dashboard
Open your browser and go to http://localhost:3000 to view the ChainPilot interface.
