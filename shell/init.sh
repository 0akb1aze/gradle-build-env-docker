#!/bin/bash
curl -s "https://get.sdkman.io" | bash

/bin/bash -c "source $HOME/.sdkman/bin/sdkman-init.sh; sdk install gradle"
