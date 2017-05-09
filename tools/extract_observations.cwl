#!/usr/bin/env cwl-runner
cwlVersion: v1.0

class: CommandLineTool

inputs:
  tsv_otu_table: File

baseCommand: [ awk, '/#/ {next};{print $1}' ]

stdin: $(inputs.tsv_otu_table.path)

stdout: observations  # helps cwltool's cache

outputs:
  observations: stdout

$namespaces:
 s: http://schema.org/
$schemas:
 - https://schema.org/docs/schema_org_rdfa.html

s:license: "https://www.apache.org/licenses/LICENSE-2.0"
s:copyrightHolder: "EMBL - European Bioinformatics Institute"
