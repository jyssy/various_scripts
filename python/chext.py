# this little script changes file extension names (in this case, jpeg to jpg, but it could be anything)
# thank you to ghostdog74 on bytes.com

import os, glob

os.chdir('directory_path_with_files')
for pict in glob.glob("*.jpeg"):
  os.rename(pict, pict[:-4] + ".jpg")
