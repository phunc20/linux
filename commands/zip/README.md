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
