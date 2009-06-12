= postini Gem

* http://postini4r.rubyforge.org/

== DESCRIPTION:

A Ruby wrapper library to make the Postini SOAP API more palatable.

Postini is the world leader in email message scanning, filtering and archiving.
This library provides users of Postini with a convenient Ruby library that 
exposes the Postini SOAP API (Early Access Program) through more familiar
Rubyisms.

== FEATURES/PROBLEMS:

* Built on top of handsoap[http://github.com/troelskn/handsoap], to
  provide a lite hash-based interface to an otherwise crap API.

== SYNOPSIS:

  Postini.api_key = 'your api key'
  Postini.username = 'administrative username'
  Postini.password = 'administrative password'
  Postini.system_number = 8

  Postini::AutomatedBatchService.test

== REQUIREMENTS:

* Approved access to the Postini Early Access Program (contact your Postini
  provider)
* handsoap[http://github.com/troelskn/handsoap]

== INSTALL:

* sudo gem install troelskn-handsoap --source http://gems.github.com
* sudo gem install postini

== TRADEMARKS:

Postini, the Postini Logo, Perimeter Manager, Security Manager, Network Edition,
AirPostini, and Postini Message Platform are either registered trademarks or 
trademarks of Postini Inc. Postini is a registered trademark of Postini, Inc.
All other trademarks are the property of their respective holders.

== LICENSE:

(The MIT License)

Copyright (c) 2008 Clear Planet Information Solutions (Pty) Ltd & ISP in a Box CC

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
