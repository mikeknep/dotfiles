{:user
 {:plugins [[cider/cider-nrepl "0.10.1"]
            [com.palletops/lein-shorthand "0.4.0"]
            [jonase/eastwood "0.2.3"]
            [lein-immutant "0.8.0"]]
  :dependencies [[org.clojure/tools.nrepl "0.2.11"]
                 [org.clojure/tools.namespace "0.2.10"]]
  :shorthand {. [clojure.pprint/pprint
                 clojure.test/run-tests
                 clojure.tools.namespace.repl/refresh]}}

 :debug
 {:dependencies [[com.gfredericks/debug-repl "0.0.6"]]
  :repl-options {:nrepl-middleware
                 [com.gfredericks.debug-repl/wrap-debug-repl]}
  :shorthand {. [com.gfredericks.debug-repl/break!
                 com.gfredericks.debug-repl/unbreak!
                 com.gfredericks.debug-repl/unbreak!!]}}}
