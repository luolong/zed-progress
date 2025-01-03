# Zed Progress 4GL Extension

This extension adds Progress 4GL/OpenABL language support to the [Zed editor](https://zed.dev).

## Features

- Syntax highlighting for Progress 4GL/OpenABL files
- Support for common file extensions (.p, .i, .w, .cls)
- Recognition of:
  - Keywords and control structures
  - Data types
  - Functions and procedures
  - Classes and interfaces
  - Variables and field references
  - Comments (both line and block style)
  - String literals
  - Numbers and operators
  - Preprocessor directives

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/vasiv/zed-progress.git
   ```

2. Build the extension:
   ```bash
   cargo build --release
   ```

3. Install the extension in Zed:
   - Open Zed
   - Press `Cmd+Shift+P` to open the command palette
   - Select "Extensions: Install Extension"
   - Choose the built extension from the target/release directory

## Usage

The extension automatically activates for files with the following extensions:
- `.p` (Progress source files)
- `.i` (Include files)
- `.w` (Window files)
- `.cls` (Class files)

## Development

This extension uses:
- [tree-sitter-abl](https://github.com/usagi-coffee/tree-sitter-abl) for parsing
- Zed's extension API for syntax highlighting and language support

### Building from Source

1. Ensure you have Rust installed
2. Clone the repository
3. Run `cargo build`

### Testing

Create a test file with the `.p` extension and open it in Zed to verify syntax highlighting.

Example:
```progress
/* Example Progress 4GL code */
DEFINE VARIABLE customer AS CHARACTER NO-UNDO.
DEFINE TEMP-TABLE tt_customer
    FIELD cust_num AS INTEGER
    FIELD name AS CHARACTER
    INDEX cust_num IS PRIMARY UNIQUE cust_num.

PROCEDURE getCustomer:
    DEFINE INPUT PARAMETER p_cust_num AS INTEGER.
    DEFINE OUTPUT PARAMETER p_name AS CHARACTER.
    
    FIND FIRST customer WHERE customer.cust_num = p_cust_num NO-LOCK.
    p_name = customer.name.
END PROCEDURE.
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

MIT License - see LICENSE file for details.

## Credits

- [tree-sitter-abl](https://github.com/usagi-coffee/tree-sitter-abl) for the Progress 4GL grammar
- [Zed](https://zed.dev) for the excellent editor and extension API

## Support

For issues and feature requests, please [create an issue](https://github.com/vasiv/zed-progress/issues) on GitHub.
