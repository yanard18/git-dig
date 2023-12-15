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

### Running Git-Dig
1. Initialize Git-Dig to start tracking sensitive data in the Git repository's history.
```shell
$ ./git-dig.sh init
```
The above command will create necessary files and directories required for Git-Dig to function.

2. Start committing changes as usual to the Git repository.

### Analyzing the Git History
1. To check for sensitive data in the Git history, run the following command:
```shell
$ ./git-dig.sh footrpt
```
Git-Dig will scan the Git history for any potentially sensitive data and display any findings.

Note: It is recommended to run this command periodically to ensure sensitive information is not present in the Git history.

2. If any sensitive data is detected, you can take appropriate actions to remove or secure the information. Make necessary changes and amend the commits if needed.

## Contributing
Contributions to Git-Dig are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue on the Git-Dig repository.

## License
Git-Dig is released under the [MIT License](https://opensource.org/licenses/MIT).
