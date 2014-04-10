(require 'newsticker)

(require 'w3m)
(setq 
 newsticker-html-renderer 'w3m-region
 newsticker-retrieval-interval 1800
 newsticker-automatically-mark-items-as-old nil
 newsticker-url-list '(("Statistical Modeling, Causal Inference, and Social Science" "http://feeds.feedburner.com/StatisticalModeling")
		       ("PHD Comics" "http://phdcomics.com/gradfeed.php")
		       ("My Biased Coin" "http://mybiasedcoin.blogspot.com/feeds/posts/default")
		       ("All Things Distributed" "http://www.allthingsdistributed.com/atom.xml")
		       ("Matt Blaze's Exhaustive Search" "http://www.crypto.com/blog/rss20.xml")
		       ("Paper Trail" "http://the-paper-trail.org/blog/feed/")
		       ("Volatile and Decentralized" "http://matt-welsh.blogspot.com/feeds/posts/default")
		       ("33 Bits of Entropy" "http://33bits.org/feed/")
		       ("Freedom to Tinker" "https://freedom-to-tinker.com/feed/")
		       ("Bits and Pieces" "http://harry-lewis.blogspot.com/feeds/posts/default")
		       ("xkcd" "http://xkcd.com/atom.xml")
		       ("Saturday Morning Breakfast Cereal" "http://feeds.feedburner.com/smbc-comics/PvLb")
		       ("Computational Complexity" "http://blog.computationalcomplexity.org/feeds/posts/default")
		       ("Shtetl-Optimized" "http://www.scottaaronson.com/blog/?feed=rss2")
		       ("The Geomblog" "http://feeds.feedburner.com/TheGeomblog")
		       ("Gödel's Lost Letter and P=NP" "http://rjlipton.wordpress.com/feed/")
		       ("Rajiv Sethi" "http://rajivsethi.blogspot.com/feeds/posts/default")
		       ("Existential Comics" "http://existentialcomics.com/rss.xml")))

(global-set-key (kbd "C-c r t") 'newsticker-treeview)
(global-set-key (kbd "C-c r p") 'newsticker-plainview)


;; Some handy functions

;; (require 'newsticker-extension)

;; (global-set-key (kbd "C-c b f") 'newsticker--treeview-browse-url-with-firefox)
;; (global-set-key (kbd "C-c b c") 'newsticker--treeview-browse-url-with-chromium-browser)

