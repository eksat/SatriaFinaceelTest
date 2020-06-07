Requirement
- Python 3.7.0
- ChromeDriver 83.0.4103.39 (ccbf011cb2d2b19b506d844400483861342c20cd-refs/branch-heads/4103@{#416}) -> depends on what google chrome version using now
- pip3 install virtualenv
- virtualenv -p python3 .env
- source .env/bin/activate
- pip3 install -r requirements.txt

Running Test:
- Assignment1,
  1. Go to your directory folder O
  2. Open folder Assignment1/resource.robot
  3. Fill your username, password, and repository name on this field ${USERNAME} , ${PASSWORD} , ${REPO_NAME}
  4. Running this command robot Assignment1/Assignment1_Test.robot

- Assignment1,
  1. Go to your directory folder O
  2. Open folder Assignment2/resource.robot
  3. Change ${UDID} to your connected emulator UDID, here im using emulator from android virtual device
  4. Running this command robot Assignment2/Assignment2_Test.robot