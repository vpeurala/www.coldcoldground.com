#!/bin/bash
jekyll build
scp _site/*.html vpeurala_coldcoldground@ssh.phx.nearlyfreespeech.net:/home/public/
