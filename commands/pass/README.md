## Backup
Aside from backup-ing
- the directory `~/.password-store/`
- the secret key for `pass`
    - On the old machine, backup the secret key by
      ```bash
      gpg --export-secret-keys --armor --output <any-name-you-like> <user-id>
      ```
      (If this key is protected by a passphrase, the exported key file will be
      protected by the same one.)
    - Import the key on the new machine by
      ```bash
      gpg --import <any-name-you-just-made>
      ```

One might also need to make the key's trust level **ultimate** on the new machine by
```bash
$ gpg --edit-key <keyID>
...
gpg> trust
...

Please decide how far you trust this user to correctly verify other users' keys
(by looking at passports, checking fingerprints from different sources, etc.)

  1 = I don't know or won't say
  2 = I do NOT trust
  3 = I trust marginally
  4 = I trust fully
  5 = I trust ultimately
  m = back to the main menu

Your decision? 5
```

That is, `trust` and then `5`.
