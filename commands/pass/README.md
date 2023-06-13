## Backup
Aside from
- copying the directory `~/.password-store/`
- exporting and copying the private and public GPG keys

One still needs to make the keys **ultimate** on the new/later machine by
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
