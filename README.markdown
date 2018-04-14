# Templates for Cl-Web-2d-Game

This include [Roswell](https://github.com/snmsts/roswell) templates of [cl-web-2d-game](https://github.com/eshamster/cl-web-2d-game).

----

## Usage

On shell.

```bash
$ git clone https://github.com/eshamster/templates-cl-web-2d-game.git
$ cd templates-cl-web-2d-game/simple
$ ros template import
$ cd ~/.roswell/local-projects
$ ros init simple-cl-web-2d-game sample-clw2d # "sample-clw2d" is your project name
$ cd sample-clw2d
$ ros install qlot
$ qlot install
```

On REPL.

```lisp
> (ql:register-local-projects)
> (ql:quickload :sample-clw2d)
> (sample-clw2d:start)
```

Then, you can access to `http://localhost:5000/` by your browser.

## Author

* eshamster (hamgoostar@gmail.com)

## Copyright

Copyright (c) 2018 eshamster (hamgoostar@gmail.com)

## License

Licensed under the MIT License.
