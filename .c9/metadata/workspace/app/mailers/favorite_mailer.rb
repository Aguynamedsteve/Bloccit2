{"changed":true,"filter":false,"title":"favorite_mailer.rb","tooltip":"/app/mailers/favorite_mailer.rb","value":"class FavoriteMailer < ActionMailer::Base\n  \n  default from: \"bloccit2@example.com\"\n\n  def new_comment(user, post, comment)\n    @user = user\n    @post = post\n    @comment = comment\n\n    headers[\"Message-ID\"] = \"<comments/#{@comment.id}@bloccit2.example>\"\n    headers[\"In-Reply-To\"] = \"<post/#{@post.id}@bloccit2.example>\"\n    headers[\"References\"] = \"<post/#{@post.id}@bloccit2.example>\"\n\n    mail(to: user.email, subject: \"New comment on #{post.title}\")\n  end\n  \n  def banned(user)\n    @user = user\n    \n    mail(to: user.email, subject: \"You have been banished.\")\n  end\nend\n","undoManager":{"mark":-42,"position":100,"stack":[[{"start":{"row":16,"column":6},"end":{"row":16,"column":7},"action":"remove","lines":["a"],"id":42}],[{"start":{"row":16,"column":6},"end":{"row":16,"column":7},"action":"insert","lines":["b"],"id":43}],[{"start":{"row":16,"column":7},"end":{"row":16,"column":8},"action":"insert","lines":["a"],"id":44}],[{"start":{"row":16,"column":8},"end":{"row":16,"column":9},"action":"insert","lines":["n"],"id":45}],[{"start":{"row":16,"column":9},"end":{"row":16,"column":10},"action":"insert","lines":["n"],"id":46}],[{"start":{"row":16,"column":10},"end":{"row":16,"column":11},"action":"insert","lines":["e"],"id":47}],[{"start":{"row":16,"column":11},"end":{"row":16,"column":12},"action":"insert","lines":["d"],"id":48}],[{"start":{"row":16,"column":18},"end":{"row":17,"column":0},"action":"insert","lines":["",""],"id":49},{"start":{"row":17,"column":0},"end":{"row":17,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":17,"column":4},"end":{"row":17,"column":5},"action":"insert","lines":["@"],"id":50}],[{"start":{"row":17,"column":5},"end":{"row":17,"column":6},"action":"insert","lines":["u"],"id":51}],[{"start":{"row":17,"column":6},"end":{"row":17,"column":7},"action":"insert","lines":["s"],"id":52}],[{"start":{"row":17,"column":7},"end":{"row":17,"column":8},"action":"insert","lines":["e"],"id":53}],[{"start":{"row":17,"column":8},"end":{"row":17,"column":9},"action":"insert","lines":["r"],"id":54}],[{"start":{"row":17,"column":9},"end":{"row":17,"column":10},"action":"insert","lines":[" "],"id":55}],[{"start":{"row":17,"column":10},"end":{"row":17,"column":11},"action":"insert","lines":["="],"id":56}],[{"start":{"row":17,"column":11},"end":{"row":17,"column":12},"action":"insert","lines":["u"],"id":57}],[{"start":{"row":17,"column":12},"end":{"row":17,"column":13},"action":"insert","lines":["s"],"id":58}],[{"start":{"row":17,"column":13},"end":{"row":17,"column":14},"action":"insert","lines":["e"],"id":59}],[{"start":{"row":17,"column":14},"end":{"row":17,"column":15},"action":"insert","lines":["r"],"id":60}],[{"start":{"row":17,"column":11},"end":{"row":17,"column":12},"action":"insert","lines":[" "],"id":61}],[{"start":{"row":18,"column":4},"end":{"row":19,"column":0},"action":"insert","lines":["",""],"id":62},{"start":{"row":19,"column":0},"end":{"row":19,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":19,"column":4},"end":{"row":19,"column":65},"action":"insert","lines":["mail(to: user.email, subject: \"New comment on #{post.title}\")"],"id":65}],[{"start":{"row":19,"column":35},"end":{"row":19,"column":63},"action":"remove","lines":["New comment on #{post.title}"],"id":66},{"start":{"row":19,"column":35},"end":{"row":19,"column":36},"action":"insert","lines":["P"]}],[{"start":{"row":19,"column":36},"end":{"row":19,"column":37},"action":"insert","lines":["e"],"id":67}],[{"start":{"row":19,"column":37},"end":{"row":19,"column":38},"action":"insert","lines":["r"],"id":68}],[{"start":{"row":19,"column":38},"end":{"row":19,"column":39},"action":"insert","lines":["m"],"id":69}],[{"start":{"row":19,"column":39},"end":{"row":19,"column":40},"action":"insert","lines":["a"],"id":70}],[{"start":{"row":19,"column":40},"end":{"row":19,"column":41},"action":"insert","lines":[" "],"id":71}],[{"start":{"row":19,"column":41},"end":{"row":19,"column":42},"action":"insert","lines":["B"],"id":72}],[{"start":{"row":19,"column":42},"end":{"row":19,"column":43},"action":"insert","lines":["a"],"id":73}],[{"start":{"row":19,"column":43},"end":{"row":19,"column":44},"action":"insert","lines":["n"],"id":74}],[{"start":{"row":19,"column":44},"end":{"row":19,"column":45},"action":"insert","lines":["n"],"id":75}],[{"start":{"row":19,"column":45},"end":{"row":19,"column":46},"action":"insert","lines":["e"],"id":76}],[{"start":{"row":19,"column":46},"end":{"row":19,"column":47},"action":"insert","lines":["d"],"id":77}],[{"start":{"row":19,"column":46},"end":{"row":19,"column":47},"action":"remove","lines":["d"],"id":78}],[{"start":{"row":19,"column":45},"end":{"row":19,"column":46},"action":"remove","lines":["e"],"id":79}],[{"start":{"row":19,"column":44},"end":{"row":19,"column":45},"action":"remove","lines":["n"],"id":80}],[{"start":{"row":19,"column":43},"end":{"row":19,"column":44},"action":"remove","lines":["n"],"id":81}],[{"start":{"row":19,"column":42},"end":{"row":19,"column":43},"action":"remove","lines":["a"],"id":82}],[{"start":{"row":19,"column":41},"end":{"row":19,"column":42},"action":"remove","lines":["B"],"id":83}],[{"start":{"row":19,"column":40},"end":{"row":19,"column":41},"action":"remove","lines":[" "],"id":84}],[{"start":{"row":19,"column":39},"end":{"row":19,"column":40},"action":"remove","lines":["a"],"id":85}],[{"start":{"row":19,"column":38},"end":{"row":19,"column":39},"action":"remove","lines":["m"],"id":86}],[{"start":{"row":19,"column":37},"end":{"row":19,"column":38},"action":"remove","lines":["r"],"id":87}],[{"start":{"row":19,"column":36},"end":{"row":19,"column":37},"action":"remove","lines":["e"],"id":88}],[{"start":{"row":19,"column":35},"end":{"row":19,"column":36},"action":"remove","lines":["P"],"id":89}],[{"start":{"row":19,"column":34},"end":{"row":19,"column":36},"action":"remove","lines":["\"\""],"id":90}],[{"start":{"row":19,"column":34},"end":{"row":19,"column":36},"action":"insert","lines":["\"\""],"id":91}],[{"start":{"row":19,"column":35},"end":{"row":19,"column":36},"action":"insert","lines":["Y"],"id":92}],[{"start":{"row":19,"column":36},"end":{"row":19,"column":37},"action":"insert","lines":["o"],"id":93}],[{"start":{"row":19,"column":37},"end":{"row":19,"column":38},"action":"insert","lines":["u"],"id":94}],[{"start":{"row":19,"column":38},"end":{"row":19,"column":39},"action":"insert","lines":[" "],"id":95}],[{"start":{"row":19,"column":39},"end":{"row":19,"column":40},"action":"insert","lines":["h"],"id":96}],[{"start":{"row":19,"column":40},"end":{"row":19,"column":41},"action":"insert","lines":["a"],"id":97}],[{"start":{"row":19,"column":41},"end":{"row":19,"column":42},"action":"insert","lines":["v"],"id":98}],[{"start":{"row":19,"column":42},"end":{"row":19,"column":43},"action":"insert","lines":["e"],"id":99}],[{"start":{"row":19,"column":43},"end":{"row":19,"column":44},"action":"insert","lines":[" "],"id":100}],[{"start":{"row":19,"column":44},"end":{"row":19,"column":45},"action":"insert","lines":["b"],"id":101}],[{"start":{"row":19,"column":45},"end":{"row":19,"column":46},"action":"insert","lines":["e"],"id":102}],[{"start":{"row":19,"column":46},"end":{"row":19,"column":47},"action":"insert","lines":["e"],"id":103}],[{"start":{"row":19,"column":47},"end":{"row":19,"column":48},"action":"insert","lines":["n"],"id":104}],[{"start":{"row":19,"column":48},"end":{"row":19,"column":49},"action":"insert","lines":[" "],"id":105}],[{"start":{"row":19,"column":49},"end":{"row":19,"column":50},"action":"insert","lines":["b"],"id":106}],[{"start":{"row":19,"column":50},"end":{"row":19,"column":51},"action":"insert","lines":["a"],"id":107}],[{"start":{"row":19,"column":51},"end":{"row":19,"column":52},"action":"insert","lines":["n"],"id":108}],[{"start":{"row":19,"column":52},"end":{"row":19,"column":53},"action":"insert","lines":["n"],"id":109}],[{"start":{"row":19,"column":53},"end":{"row":19,"column":54},"action":"insert","lines":["e"],"id":110}],[{"start":{"row":19,"column":54},"end":{"row":19,"column":55},"action":"insert","lines":["d"],"id":111}],[{"start":{"row":19,"column":55},"end":{"row":19,"column":56},"action":"insert","lines":[" "],"id":112}],[{"start":{"row":19,"column":55},"end":{"row":19,"column":56},"action":"remove","lines":[" "],"id":113}],[{"start":{"row":19,"column":54},"end":{"row":19,"column":55},"action":"remove","lines":["d"],"id":114}],[{"start":{"row":19,"column":53},"end":{"row":19,"column":54},"action":"remove","lines":["e"],"id":115}],[{"start":{"row":19,"column":52},"end":{"row":19,"column":53},"action":"remove","lines":["n"],"id":116}],[{"start":{"row":19,"column":52},"end":{"row":19,"column":53},"action":"insert","lines":["n"],"id":117}],[{"start":{"row":19,"column":53},"end":{"row":19,"column":54},"action":"insert","lines":["i"],"id":118}],[{"start":{"row":19,"column":53},"end":{"row":19,"column":54},"action":"remove","lines":["i"],"id":119}],[{"start":{"row":19,"column":52},"end":{"row":19,"column":53},"action":"remove","lines":["n"],"id":120}],[{"start":{"row":19,"column":52},"end":{"row":19,"column":53},"action":"insert","lines":["i"],"id":121}],[{"start":{"row":19,"column":53},"end":{"row":19,"column":54},"action":"insert","lines":["s"],"id":122}],[{"start":{"row":19,"column":54},"end":{"row":19,"column":55},"action":"insert","lines":["h"],"id":123}],[{"start":{"row":19,"column":55},"end":{"row":19,"column":56},"action":"insert","lines":["e"],"id":124}],[{"start":{"row":19,"column":56},"end":{"row":19,"column":57},"action":"insert","lines":["d"],"id":125}],[{"start":{"row":19,"column":56},"end":{"row":19,"column":57},"action":"remove","lines":["d"],"id":126}],[{"start":{"row":19,"column":55},"end":{"row":19,"column":56},"action":"remove","lines":["e"],"id":127}],[{"start":{"row":19,"column":54},"end":{"row":19,"column":55},"action":"remove","lines":["h"],"id":128}],[{"start":{"row":19,"column":53},"end":{"row":19,"column":54},"action":"remove","lines":["s"],"id":129}],[{"start":{"row":19,"column":52},"end":{"row":19,"column":53},"action":"remove","lines":["i"],"id":130}],[{"start":{"row":19,"column":51},"end":{"row":19,"column":52},"action":"remove","lines":["n"],"id":131}],[{"start":{"row":19,"column":50},"end":{"row":19,"column":51},"action":"remove","lines":["a"],"id":132}],[{"start":{"row":19,"column":49},"end":{"row":19,"column":50},"action":"remove","lines":["b"],"id":133}],[{"start":{"row":19,"column":49},"end":{"row":19,"column":50},"action":"insert","lines":["b"],"id":134}],[{"start":{"row":19,"column":50},"end":{"row":19,"column":51},"action":"insert","lines":["a"],"id":135}],[{"start":{"row":19,"column":51},"end":{"row":19,"column":52},"action":"insert","lines":["n"],"id":136}],[{"start":{"row":19,"column":52},"end":{"row":19,"column":53},"action":"insert","lines":["i"],"id":137}],[{"start":{"row":19,"column":53},"end":{"row":19,"column":54},"action":"insert","lines":["s"],"id":138}],[{"start":{"row":19,"column":54},"end":{"row":19,"column":55},"action":"insert","lines":["h"],"id":139}],[{"start":{"row":19,"column":55},"end":{"row":19,"column":56},"action":"insert","lines":["e"],"id":140}],[{"start":{"row":19,"column":56},"end":{"row":19,"column":57},"action":"insert","lines":["d"],"id":141}],[{"start":{"row":19,"column":57},"end":{"row":19,"column":58},"action":"insert","lines":[" "],"id":142}],[{"start":{"row":19,"column":57},"end":{"row":19,"column":58},"action":"remove","lines":[" "],"id":143}],[{"start":{"row":19,"column":57},"end":{"row":19,"column":58},"action":"insert","lines":["."],"id":144}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":22,"column":0},"end":{"row":22,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1428467016531}