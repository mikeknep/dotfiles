{:user {:plugins [[cider/cider-nrepl "0.8.2"]
                  [com.palletops/lein-shorthand "0.4.0"]
                  [lein-immutant "0.8.0"]]
        :dependencies [[com.gfredericks/repl-utils "0.2.4"]
                       ;; [com.gfredericks/debug-repl "0.0.6"]
                       [org.clojure/tools.nrepl "0.2.8"]
                       [org.clojure/tools.namespace "0.2.10"]]
        ;; :repl-options {:nrepl-middleware
        ;;                [com.gfredericks.debug-repl/wrap-debug-repl]}
        :shorthand {. [clojure.test/run-tests
                       clojure.tools.namespace.repl/refresh
                       ;; com.gfredericks.debug-repl/break!
                       ;; com.gfredericks.debug-repl/unbreak!
                       ;; com.gfredericks.debug-repl/unbreak!!
                       com.gfredericks.repl/add-dep
                       com.gfredericks.repl/dir
                       com.gfredericks.repl/pp
                       com.gfredericks.repl/run-all-tests
                       com.gfredericks.repl.bg/bg
                       com.gfredericks.repl.bg/bg-deref]}}}
