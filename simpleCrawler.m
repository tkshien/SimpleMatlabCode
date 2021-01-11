url = 'https://www.ptt.cc/bbs/Gossiping/index.html';
opt = weboptions('KeyName','cookie','KeyValue','over18=1');
raw_data = webread(url,opt);
title = regexp(raw_data,'<div class="title">.*?</div>?','match');
title = title';
title = string(title);
title = eraseTags(title);
title = regexprep(title,'(\t|\r|\n)',"");