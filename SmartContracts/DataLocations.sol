// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


// Variables are declared as either storage, memory or calldata to explicitly specify the location of the data.

// mostly use explicitly in bytes,string, array and mapping,struct

// storage - variable is a state variable (store on blockchain)
// memory - variable is in memory and it exists while a function is being called,However, they are mutable within that function.
// calldata - Calldata is an immutable, temporary location where function arguments are stored, and behaves mostly like memory.
// special data location that contains function arguments

contract DataLocation{

    struct Todo {
        string text;
        bool completed;
    }




    // An array of 'Todo' structs
    Todo[] public todos;

    function create(string calldata _text) public  {

     todos.push(Todo(_text, false));

    }

    // Solidity automatically created a getter for 'todos' so
    // you don't actually need this function.
    function get(uint _index) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    // update text
    function updateText(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }



}