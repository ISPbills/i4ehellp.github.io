


## Envoironment variables in BuildGrid

You can pass environment variables into your Dockerfile during your build process 
<span style="background-color: #FFFF00">(if using BuildGrid)</span>
 with the $VARIABLE syntax, which will be populated with environment variable(s) set on the stack. For example let's say you have an environment variable called `MY_FOLDER` with the value `/path/to/myfolder`. If you run the following command in your dockerfile:



{%include _inlines/Deployment/common/build-grid/code_build-grid_envoironment-variables-in-buildgrid--v1.md  product = include.product %}




Cloud 66 will change this line to:



{%include _inlines/Deployment/common/build-grid/code_build-grid_envoironment-variables-in-buildgrid--2-v1.md  product = include.product %}




and then it starts building from the finalized dockerfile.
