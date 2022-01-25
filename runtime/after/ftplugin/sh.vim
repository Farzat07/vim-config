" Settings for shell files.
command -buffer -nargs=* Run split | terminal chmod +x %:p:S; %:p:S <args>
command -buffer -nargs=* WRun w | Run <args>
