require_relative 'challenge-5'

=begin

  Implement repeating-key XOR
  Here is the opening stanza of an important work of the English language:

  "Burning 'em, if you ain't quick and nimble
  I go crazy when I hear a cymbal
  Encrypt it, under the key "ICE", using repeating-key XOR."

  In repeating-key XOR, you'll sequentially apply each byte of the key; the first byte of plaintext will be XOR'd against I, the next C, the next E, then I again for the 4th byte, and so on.

  It should come out to:

  "0b363727 2a2b2e63 622c2e69 692a2369 3a2a3c6324202d623d63343c2a26226324272765272
  a282b2f20430a652e2c652a3124333a653e2b2027630c692b20283165286326302e27282f"
  Encrypt a bunch of stuff using your repeating-key XOR function. Encrypt your mail. Encrypt your password file. Your .sig file. Get a feel for it. I promise, we aren't wasting your time with this.

=end

line_one = "Burning 'em, if you ain't quick and nimble\nI go crazy when I hear a cymbal"
key = "ICE"

p HEX.from_bin(sequential_xor(key, line_one))
p HEX.from_bin(sequential_xor(key, line_one)) == "0b3637272a2b2e63622c2e69692a23693a2a3c6324202d623d63343c2a26226324272765272
  a282b2f20430a652e2c652a3124333a653e2b2027630c692b20283165286326302e27282f"

# "0b363727 2a2b2e63 622c2e69 692a2369 3a2a3c63 24202d62 3d63343c 2a262263 24272765 272a282b 2f20430a 652e2c65 2a312433 3a653e2b 2027630c 692b2028 31652863 26302e27 282f"


  # It should come out to:

  # "0b363727 2a2b2e63 622c2e69 692a2369 3a2a3c63 24202d62 3d63343c 2a262263 24272765 272a282b 2f20430a 652e2c65 2a312433 3a653e2b 2027630c 692b2028 31652863 26302e27 282f"
