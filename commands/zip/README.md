### `zip/unzip` useful options
- `-q`: quiet
  - e.g. `zip -rq train_npy.zip train_npy/`
  - `unzip -dq train_npy train_npy.zip`
- `-d`: extract to under some directory
- `-j`: zip without folder structure, e.g.
  - `zip -r test_npy test_npy` will produce `test_npy.zip` which when unzipped will contain the folder `test_npy/`
  - `zip -rj test_npy test_npy` will produce `test_npy.zip` which when unzipped will **NOT** contain the folder `test_npy/`
  - N.B. `.zip` specified or no doesn't matter. That is, `zip -rj test_npy.zip test_npy` is equiv. to `zip -rj test_npy test_npy`.


### Unzip into a directory
Sometimes after inspecting by `unzip -l sth.zip`, you find that you'd rather like to have the
unzipped files/folders lying inside another folder. In this case, use the **`-d`** option:
> i.e. **`unzip -d dir_name sth.zip`**
```bash
[phunc20@tako-x60 2011-fall]$ unzip -l ps6.zip
Archive:  ps6.zip
  Length      Date    Time    Name
---------  ---------- -----   ----
        0  2012-08-28 16:19   dijkstra/data/
    20707  2012-08-28 15:41   dijkstra/data/datadict.txt
     5775  2012-08-28 15:41   dijkstra/data/format.txt
 11778388  2012-08-28 15:41   dijkstra/data/nhpn.lnk
  8318180  2012-08-28 15:41   dijkstra/data/nhpn.nod
    11933  2012-08-28 15:41   dijkstra/dijkstra.py
       54  2012-08-28 15:41   dijkstra/dijkstra_kml.bat
     1925  2012-08-28 15:41   dijkstra/dijkstra_test.py
     3035  2012-08-30 15:12   dijkstra/nhpn.py
    17835  2012-08-28 15:41   dijkstra/path_curved_sol.kml
    15901  2012-08-28 15:41   dijkstra/path_flat_sol.kml
     3003  2012-08-28 15:41   dijkstra/priority_queue.py
     1179  2012-08-28 15:41   dijkstra/README.txt
        0  2012-08-28 16:19   dijkstra/tests/
       27  2012-08-28 15:41   dijkstra/tests/0boston_berkeley.gold
       40  2012-08-28 15:41   dijkstra/tests/0boston_berkeley.in
       27  2012-08-28 15:41   dijkstra/tests/1pasadena_cambridge.gold
       43  2012-08-28 15:41   dijkstra/tests/1pasadena_cambridge.in
       27  2012-08-28 15:41   dijkstra/tests/2portland_me_sf.gold
       47  2012-08-28 15:41   dijkstra/tests/2portland_me_sf.in
       27  2012-08-28 15:41   dijkstra/tests/3pasadena_bellevue.gold
       42  2012-08-28 15:41   dijkstra/tests/3pasadena_bellevue.in
       26  2012-08-28 15:41   dijkstra/tests/4newhaven_cambridge.gold
...

[phunc20@tako-x60 2011-fall]$ unzip -d ps6 ps6.zip
Archive:  ps6.zip
   creating: ps6/dijkstra/data/
  inflating: ps6/dijkstra/data/datadict.txt
  inflating: ps6/dijkstra/data/format.txt
  inflating: ps6/dijkstra/data/nhpn.lnk
  inflating: ps6/dijkstra/data/nhpn.nod
  inflating: ps6/dijkstra/dijkstra.py
  inflating: ps6/dijkstra/dijkstra_kml.bat
  inflating: ps6/dijkstra/dijkstra_test.py
  inflating: ps6/dijkstra/nhpn.py
  inflating: ps6/dijkstra/path_curved_sol.kml
  inflating: ps6/dijkstra/path_flat_sol.kml
  inflating: ps6/dijkstra/priority_queue.py
  inflating: ps6/dijkstra/README.txt
   creating: ps6/dijkstra/tests/
 extracting: ps6/dijkstra/tests/0boston_berkeley.gold
 extracting: ps6/dijkstra/tests/0boston_berkeley.in
 extracting: ps6/dijkstra/tests/1pasadena_cambridge.gold
...
```



- zip all the files and folders in <code>pwd</code>: <code><b>zip -r topsecret.zip .</b></code>
- zip specifi files and folders in <code>pwd</code>: <code><b>zip -r topsecret.zip fileA folderB/ fileC</b></code>
- preview unzipped content: <code><b>unzip -l topsecret.zip</b></code>

```
[phunc20@artichaut-x220 Miner-Testing-CodeSample]$ ls
build  src
[phunc20@artichaut-x220 Miner-Testing-CodeSample]$ zip -r nonRL01.zip .
  adding: build/ (stored 0%)
  adding: build/constants.py (deflated 72%)
  adding: build/TestingAgent.py (deflated 59%)
  adding: build/run.sh (deflated 12%)
  adding: build/MINER_STATE.py (deflated 74%)
  adding: build/GAME_SOCKET.py (deflated 54%)
  adding: build/viz_utils.py (deflated 62%)
  adding: build/__pycache__/ (stored 0%)
  adding: build/__pycache__/viz_utils.cpython-36.pyc (deflated 40%)
  adding: build/__pycache__/MinerEnv.cpython-36.pyc (deflated 47%)
  adding: build/__pycache__/MINER_STATE.cpython-36.pyc (deflated 60%)
  adding: build/__pycache__/non_RL_agent.cpython-36.pyc (deflated 48%)
  adding: build/__pycache__/GAME_SOCKET.cpython-36.pyc (deflated 42%)
  adding: build/__pycache__/constants.cpython-36.pyc (deflated 62%)
  adding: build/non_RL_agent.py (deflated 77%)
  adding: build/MinerEnv.py (deflated 66%)
  adding: src/ (stored 0%)
  adding: src/build.sh (stored 0%)
[phunc20@artichaut-x220 Miner-Testing-CodeSample]$ unzip -l nonRL01.zip
Archive:  nonRL01.zip
  Length      Date    Time    Name
---------  ---------- -----   ----
        0  2020-08-17 21:35   build/
     3796  2020-08-17 21:22   build/constants.py
     2410  2020-08-17 21:35   build/TestingAgent.py
      109  2020-08-17 20:52   build/run.sh
     4367  2020-08-17 20:52   build/MINER_STATE.py
      861  2020-08-17 20:52   build/GAME_SOCKET.py
     3083  2020-08-17 21:19   build/viz_utils.py
        0  2020-08-17 21:23   build/__pycache__/
     2304  2020-08-17 21:23   build/__pycache__/viz_utils.cpython-36.pyc
     2729  2020-08-17 21:23   build/__pycache__/MinerEnv.cpython-36.pyc
     5093  2020-08-17 21:23   build/__pycache__/MINER_STATE.cpython-36.pyc
     3684  2020-08-17 21:23   build/__pycache__/non_RL_agent.cpython-36.pyc
     1522  2020-08-17 21:23   build/__pycache__/GAME_SOCKET.cpython-36.pyc
     6443  2020-08-17 21:23   build/__pycache__/constants.cpython-36.pyc
     6146  2020-08-17 20:57   build/non_RL_agent.py
     2950  2020-08-17 21:07   build/MinerEnv.py
        0  2020-08-17 20:52   src/
        0  2020-08-17 20:52   src/build.sh
---------                     -------
    45497                     18 files
[phunc20@artichaut-x220 Miner-Testing-CodeSample]$
```

<b>Alternatively,</b>

```
[phunc20@artichaut-x220 Miner-Testing-CodeSample]$ ls
build  nonRL01.zip  src
[phunc20@artichaut-x220 Miner-Testing-CodeSample]$ rm nonRL01.zip
[phunc20@artichaut-x220 Miner-Testing-CodeSample]$ zip -r nonRL01.zip build/ src/
  adding: build/ (stored 0%)
  adding: build/constants.py (deflated 72%)
  adding: build/TestingAgent.py (deflated 59%)
  adding: build/run.sh (deflated 12%)
  adding: build/MINER_STATE.py (deflated 74%)
  adding: build/GAME_SOCKET.py (deflated 54%)
  adding: build/viz_utils.py (deflated 62%)
  adding: build/__pycache__/ (stored 0%)
  adding: build/__pycache__/viz_utils.cpython-36.pyc (deflated 40%)
  adding: build/__pycache__/MinerEnv.cpython-36.pyc (deflated 47%)
  adding: build/__pycache__/MINER_STATE.cpython-36.pyc (deflated 60%)
  adding: build/__pycache__/non_RL_agent.cpython-36.pyc (deflated 48%)
  adding: build/__pycache__/GAME_SOCKET.cpython-36.pyc (deflated 42%)
  adding: build/__pycache__/constants.cpython-36.pyc (deflated 62%)
  adding: build/non_RL_agent.py (deflated 77%)
  adding: build/MinerEnv.py (deflated 66%)
  adding: src/ (stored 0%)
  adding: src/build.sh (stored 0%)
[phunc20@artichaut-x220 Miner-Testing-CodeSample]$ ls
build  nonRL01.zip  src
[phunc20@artichaut-x220 Miner-Testing-CodeSample]$ unzip -l nonRL01.zip
Archive:  nonRL01.zip
  Length      Date    Time    Name
---------  ---------- -----   ----
        0  2020-08-17 21:35   build/
     3796  2020-08-17 21:22   build/constants.py
     2410  2020-08-17 21:35   build/TestingAgent.py
      109  2020-08-17 20:52   build/run.sh
     4367  2020-08-17 20:52   build/MINER_STATE.py
      861  2020-08-17 20:52   build/GAME_SOCKET.py
     3083  2020-08-17 21:19   build/viz_utils.py
        0  2020-08-17 21:23   build/__pycache__/
     2304  2020-08-17 21:23   build/__pycache__/viz_utils.cpython-36.pyc
     2729  2020-08-17 21:23   build/__pycache__/MinerEnv.cpython-36.pyc
     5093  2020-08-17 21:23   build/__pycache__/MINER_STATE.cpython-36.pyc
     3684  2020-08-17 21:23   build/__pycache__/non_RL_agent.cpython-36.pyc
     1522  2020-08-17 21:23   build/__pycache__/GAME_SOCKET.cpython-36.pyc
     6443  2020-08-17 21:23   build/__pycache__/constants.cpython-36.pyc
     6146  2020-08-17 20:57   build/non_RL_agent.py
     2950  2020-08-17 21:07   build/MinerEnv.py
        0  2020-08-17 20:52   src/
        0  2020-08-17 20:52   src/build.sh
---------                     -------
    45497                     18 files

```
