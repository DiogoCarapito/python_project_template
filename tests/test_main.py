"""A test for main.py that verifies fire cli functionality"""

from main import main
import subprocess

def test_fire_cli_text():
    # Run the command and capture the output
    result = subprocess.run(['python', 'main.py', '--name=Test'], capture_output=True, text=True)

    # Check the output
    assert result.stdout.strip() == 'Hello Test!'

def test_fire_cli_no_text():
    # Run the command and capture the output
    result = subprocess.run(['python', 'main.py',], capture_output=True, text=True)

    # Check the output
    assert result.stdout.strip() == 'Hello World!'