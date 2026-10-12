# Rexo the Chatbot

A lightweight Python chatbot trained on a small set of prompt-response examples using a sequence-to-sequence neural network with attention.

## Overview

Rexo is a simple conversational assistant built in Python with PyTorch. It learns from a JSON dataset of example input/output pairs and can then respond to new prompts in a CLI chat loop.

The project demonstrates:

- a minimal encoder-decoder architecture
- GRU-based sequence modeling
- attention mechanism
- local training from a JSON file at startup
- a simple interactive terminal chatbot

## Features

- Trains a seq2seq model automatically when the script starts
- Uses a JSON dataset for conversational examples
- Supports prompt-response style learning
- Includes a schema file for validating training data
- Runs interactively from the terminal

## Project Structure

```text
.
├── app.py                  # Chatbot training and inference logic
├── requirements.txt       # Python dependencies
├── training_data.json      # Example Q&A training dataset
├── training_data.schema.json  # JSON schema for dataset validation
├── LICENSE                 # Project license
└── .gitignore
```

## Requirements

- Python 3.10+
- PyTorch

Install dependencies:

```bash
pip install -r requirements.txt
```

## Running the Chatbot

Start the app:

```bash
python app.py
```

Then chat in the terminal:

```text
You: Who are you?
AI: I am Rexo, your helpful general assistant. I answer clearly, avoid guessing, and ask for clarification when needed.
```

Type `quit` or `exit` to end the session.

## Training Data

The project uses `training_data.json`, where each item contains an `input` and an `output` pair:

```json
[
  {
    "input": "Who are you?",
    "output": "I am Rexo, your helpful general assistant."
  }
]
```

The schema in `training_data.schema.json` ensures the dataset matches the expected structure.

## How It Works

1. The script loads training pairs from `training_data.json`.
2. It builds a vocabulary from all words in the dataset.
3. It encodes prompts and responses using token IDs.
4. An encoder-decoder model with attention is trained for a number of epochs.
5. The model generates responses for new user input using greedy decoding.

## Customizing the Bot

To improve or extend behavior, edit `training_data.json` with more examples that match the style of conversation you want the bot to learn.

Example:

```json
{
  "input": "Explain what a variable is in Python.",
  "output": "A variable is a name used to store a value in memory so it can be reused later."
}
```

## Notes

This is a minimal educational chatbot rather than a production-ready assistant. It is designed to be simple, transparent, and easy to experiment with.

## License

This project is licensed under the terms of the repository's `LICENSE` file.
