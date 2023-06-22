#!/bin/bash

usage() { echo "Usage: $0 [-o <owner>] [-m <month>]"; exit 0; }

get_line_count (){
    local file_path= "./"
    local filter=
    # Here it's supposed to be the commands to get the count
}

while getopts ":o:m:" arg; do
  case "${arg}" in
    o)
      if [ ${OPTARG} == 'Owner' ] || [ ${OPTARG} == 'owner' ]; then
        echo "Please specify the owner name"
        usage
      else
	    o=${OPTARG}
	    echo "Owner is ${o}"
        # Here I guess I need to call the function and pass the arg
      fi
      ;;
    m)
      if [ ${OPTARG} == 'Month' ] || [ ${OPTARG} == 'month' ]; then
        echo "Please specify the month as jun, feb, mar, apr, may, jun, jul, aug, sep, oct, nov or dec"
        usage
      else
        m=${OPTARG}
	    echo "Month is ${m}"
	    # Here I guess I need to call the function and pass the arg
	  fi
      ;;
    *)
      echo "Please use the following syntax"
      usage
      ;;
  esac
done