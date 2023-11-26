PROJECT_NICK="warmup"

VENVS_DIR=${HOME}/.venvs
mkdir -p ${VENVS_DIR}

virtualenv --clear -p python3 ${VENVS_DIR}/${PROJECT_NICK}_venv
source ${VENVS_DIR}/${PROJECT_NICK}_venv/bin/activate

# one of subpackage has deprecated dependencies
# The 'sklearn' PyPI package is deprecated, use 'scikit-learn' rather than 'sklearn' for pip commands.
export SKLEARN_ALLOW_DEPRECATED_SKLEARN_PACKAGE_INSTALL=True

pip install -r requirements.txt
echo "export PYTHONPATH=`pwd`/src" >> $VIRTUAL_ENV/bin/activate