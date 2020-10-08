## Installation
As of 2020, the best way to install <code>coursera-dl</code> I come to know of is through python virtual environment, i.e.
- Using <code>pip install virtualenv</code> and eventually <code>pip install virtualenvwrapper</code> (<code>workon, mkvirtualenv</code>, etc.)
- Inside a new virtualenv <code>pip install coursera-dl</code>
- <b>Note</b> that <code>youtube-dl</code>, a similar package, seems to be in conflict with <code>coursera-dl</code>, so it's maybe <b>not a good idea</b> to install both in a common virtual environment


## Usage
- <b>Correct</b>: <code><b>coursera-dl -u xxxxxxxxxxxxx@xxxxxx -p xxxxxxx ml-foundations</b></code>, where <code>-u</code> is the user's email, <code>-p</code> is their password
- <b>Incorrect</b>: <code><b>coursera-dl -u xxxxxxxxxxxxx@xxxxxx -p xxxxxxx https://www.coursera.org/learn/ml-foundations/home/</b></code>, i.e. <b>don't</b> use <b>the entire URL</b>.




