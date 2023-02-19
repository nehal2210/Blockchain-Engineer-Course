const ethers = require("ethers");
const dotenv = require("dotenv");

dotenv.config();

async function main() {
  const provider = new ethers.providers.JsonRpcProvider(
    "RPC_PROVIDER_URL"
  );

  // provider

  // console.log(await provider.getBlockNumber());

  // const bal = await provider.getBalance(
  //   "0xbcFA8eAB1fCe576F1Ef71772E46519e0ADC06623"
  // );

  // console.log(ethers.utils.formatEther(bal));

  // console.log(await provider.getBlock());

  // signer

  // console.log();

  const signer = new ethers.Wallet(process.env.PRIVATE_KEY, provider);

  // let tx = {
  //   to: "0xbcFA8eAB1fCe576F1Ef71772E46519e0ADC06623",
  //   value: ethers.utils.parseEther("0.01"),
  // };

  // // 2.22

  // let TX = await signer.sendTransaction(tx);

  // await TX.wait();
  // console.log(TX);

  // contract

  const contract_address = "0x35595cc6DD5CF938c24f393b6F7282109253C84A";
  const ABI = [
    {
      inputs: [],
      stateMutability: "nonpayable",
      type: "constructor",
    },
    {
      inputs: [
        {
          internalType: "address",
          name: "addr",
          type: "address",
        },
      ],
      name: "NotAnOwner",
      type: "error",
    },
    {
      inputs: [
        {
          internalType: "uint256",
          name: "_id",
          type: "uint256",
        },
      ],
      name: "TaskNotCompleted",
      type: "error",
    },
    {
      inputs: [
        {
          internalType: "uint256",
          name: "_id",
          type: "uint256",
        },
      ],
      name: "TaskNotExist",
      type: "error",
    },
    {
      anonymous: false,
      inputs: [
        {
          indexed: false,
          internalType: "uint256",
          name: "reward",
          type: "uint256",
        },
      ],
      name: "TaskComplete",
      type: "event",
    },
    {
      anonymous: false,
      inputs: [
        {
          indexed: false,
          internalType: "uint256",
          name: "id",
          type: "uint256",
        },
        {
          indexed: false,
          internalType: "string",
          name: "work",
          type: "string",
        },
        {
          indexed: false,
          internalType: "bool",
          name: "status",
          type: "bool",
        },
      ],
      name: "TaskCreated",
      type: "event",
    },
    {
      anonymous: false,
      inputs: [
        {
          indexed: false,
          internalType: "uint256",
          name: "id",
          type: "uint256",
        },
        {
          indexed: false,
          internalType: "string",
          name: "work",
          type: "string",
        },
        {
          indexed: false,
          internalType: "bool",
          name: "status",
          type: "bool",
        },
      ],
      name: "TaskStatusChange",
      type: "event",
    },
    {
      stateMutability: "payable",
      type: "fallback",
    },
    {
      inputs: [],
      name: "TodosCompleted",
      outputs: [],
      stateMutability: "payable",
      type: "function",
    },
    {
      inputs: [
        {
          internalType: "string",
          name: "_work",
          type: "string",
        },
      ],
      name: "createTask",
      outputs: [],
      stateMutability: "payable",
      type: "function",
    },
    {
      inputs: [],
      name: "getBalance",
      outputs: [
        {
          internalType: "uint256",
          name: "",
          type: "uint256",
        },
      ],
      stateMutability: "view",
      type: "function",
    },
    {
      inputs: [],
      name: "getRevenue",
      outputs: [
        {
          internalType: "uint256",
          name: "",
          type: "uint256",
        },
      ],
      stateMutability: "view",
      type: "function",
    },
    {
      inputs: [],
      name: "getReward",
      outputs: [
        {
          internalType: "uint256",
          name: "",
          type: "uint256",
        },
      ],
      stateMutability: "view",
      type: "function",
    },
    {
      inputs: [],
      name: "getTasks",
      outputs: [
        {
          components: [
            {
              internalType: "string",
              name: "work",
              type: "string",
            },
            {
              internalType: "bool",
              name: "status",
              type: "bool",
            },
          ],
          internalType: "struct ToDo.task[]",
          name: "",
          type: "tuple[]",
        },
      ],
      stateMutability: "view",
      type: "function",
    },
    {
      inputs: [
        {
          internalType: "address",
          name: "_owner",
          type: "address",
        },
      ],
      name: "setOwner",
      outputs: [],
      stateMutability: "nonpayable",
      type: "function",
    },
    {
      inputs: [
        {
          internalType: "uint256",
          name: "_id",
          type: "uint256",
        },
      ],
      name: "toggleTask",
      outputs: [],
      stateMutability: "nonpayable",
      type: "function",
    },
    {
      inputs: [],
      name: "withDraw",
      outputs: [],
      stateMutability: "nonpayable",
      type: "function",
    },
    {
      stateMutability: "payable",
      type: "receive",
    },
  ];

  const contract = new ethers.Contract(contract_address, ABI, signer);

  // const creatTask_tx = await contract.createTask("clean the window", {
  //   value: ethers.utils.parseEther("0.1"),
  // });

  // await creatTask_tx.wait();

  // console.log(creatTask_tx);

  // const toggleTask_tx = await contract.toggleTask(0);

  // await toggleTask_tx.wait();

  // console.log(toggleTask_tx);

  // console.log(await contract.getTasks());

  // console.log(ethers.utils.formatEther(await contract.getReward()));

  const TodosCompleted_tx = await contract.TodosCompleted();
  await TodosCompleted_tx.wait();

  console.log(TodosCompleted_tx);
}

main();
