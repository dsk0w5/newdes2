# NewDES2 CLI tool

An implementation of the [NewDES](https://en.wikipedia.org/wiki/NewDES) encryption algorithm.

## Usage

Compile with `make`.


Then, run `./newdes2` with the appropriate arguments:
| Option | Meaning |
| --- | --- |
| -d | Decipher stdin, can be combined with -u |
| -e | Encipher stdin, can also be combined with -u |
| -c | Apply encryption, otherwise data will be copied or uuencoded/decoded without applying NewDES |
| -u | Use uuencode/uudecode. |
| -k <key> | Encryption key - up to 15 characters are used. Required even if -c is not used (key ignored). |

## Examples

### Encrypt binary
`newdes2 -e -c -k "MySecret" < plain.dat > cipher.bin`
### Decrypt binary
`newdes2 -d -c -k "MySecret" < cipher.bin > restored.dat`
### Encrypt ASCII (uuencoded)
`newdes2 -e -c -u -k "MySecret" < plain.txt > encrypted.uu`
### Decrypt ASCII (uuencoded)
`newdes2 -d -c -u -k "MySecret" < encrypted.uu > plain.txt`
### Only uuencode
`newdes2 -e -u -k "anything" < binary.file > encoded.uu`
### Only uudecode
`newdes2 -d -u -k "anything" < encoded.uu > binary.file`

## License

All files except UUCODE.C and UUCODEPR.H are in the public domain (0BSD), UUCODE.C and UUCODEPR.H are BSD-4 licensed.
