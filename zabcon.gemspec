#GPL 2.0  http://www.gnu.org/licenses/gpl-2.0.html
#Zabbix CLI Tool and associated files
#Copyright (C) 2009,2010 Andrew Nelson nelsonab(at)red-tux(dot)net
#
#This program is free software; you can redistribute it and/or
#modify it under the terms of the GNU General Public License
#as published by the Free Software Foundation; either version 2
#of the License, or (at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program; if not, write to the Free Software
#Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

##########################################
# Subversion information
# $Id$
# $Revision$
##########################################

#Zabcon, the Zabbix Console, GemSpec file

revision="$Revision$"
result=/[^\d]*(\d*)[^\d]*/.match(revision)
revision=result[1].to_i

spec = Gem::Specification.new do |s|
  s.name = %q{zabcon}
  s.rubyforge_project = "zabcon"
  s.version = "0.0.#{revision}"
  s.authors = ["A. Nelson"]
  s.email = %q{nelsonab@red-tux.net}
  s.summary = %q{Zabcon command line interface for Zabbix}
  s.homepage = %q{http://trac.red-tux.net/}
  s.description = %q{Zabcon is a command line interface for Zabbix written in Ruby}
  s.licenses = "GPL 2.0"
  s.requirements = "Requires zbxapi, parseconfig and highline"
  s.add_dependency("zbxapi", '>=0.1.292')
  s.add_dependency("parseconfig")
  s.add_dependency("highline")
  s.required_ruby_version = '>=1.8.6'
  s.require_paths =["."]
  s.files =
    ["zabcon.rb", "zabcon.conf.default", "README",
     "libs/argument_processor.rb", "libs/revision.rb",
     "libs/command_help.rb", "libs/command_tree.rb",
     "libs/help.xml", "libs/input.rb", "libs/printer.rb",
      "libs/zabcon_core.rb","libs/zabcon_exceptions.rb",
      "libs/zabcon_globals.rb", "libs/zabbix_server.rb",
      "libs/utility_items.rb"]
  s.bindir = "."
  s.executables << "zabcon.rb"
  s.default_executable="zabcon"
end
