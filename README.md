# Git-Dig

## Description
Git-Dig is a project that assists in detecting sensitive data within the logs of a Git repository's history. It allows you to footprint the logs of the Git history and search for any sensitive information that may have been accidentally committed.

This README provides instructions on how to use Git-Dig and outlines its functionalities.

## Usage

### Installation
1. Clone the Git-Dig repository to your local machine.
```shell
$ git clone https://github.com/<username>/git-dig.git
```
2. Navigate to the cloned project directory.
```shell
$ cd git-dig/
```

## Running Git-Dig

Git-Dig is a powerful script that allows you to search for specific strings or keywords within your Git repository. It helps you track sensitive data and analyze the Git history for potential security issues. Here, we explain various ways to run Git-Dig and the corresponding commands.

### Searching for a specific string

To search for a specific string within your Git repository, use the following command:

```bash
$ bash git-dig.sh -i "string to search for"
```

Replace `"string to search for"` with the actual string you want to search for. Git-Dig will then scan your repository and display any occurrences of the specified string.

### Searching using a list of keywords

If you have a list of keywords and want to search for all of them within your Git repository, use the following command:

```bash
$ bash git-dig.sh -f key-list.txt
```

Replace `key-list.txt` with the filename that contains your list of keywords. Git-Dig will go through each keyword in the list and display any occurrences found in your repository.

2. If any sensitive data is detected, you can take appropriate actions to remove or secure the information. Make necessary changes and amend the commits if needed.

## Contributing
Contributions to Git-Dig are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue on the Git-Dig repository.

## License
Git-Dig is released under the [MIT License](https://opensource.org/licenses/MIT).
