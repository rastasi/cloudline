#A lokalizacios modul kibovitese
module I18n
    module DateTimeExtensions
        def l(params = {})
            params.update({:format => :short})
            I18n.l(self, params)
        end
    end
    module StringExtensions
        def t(params = {})
            params.update({:raise => true})
            key = self
            key = self.downcase.to_s if key.is_a?(String)

            begin
                #Probaljuk meg az adott nyelvre leforditani a sztringet
                I18n.t(key, params)
            rescue Exception => e
                #Ha nem sikerol, belekerul a logba
                puts ("Translation for '#{self}' is missing")
                self
            end
        end
    end
end

class Symbol
    include I18n::StringExtensions
end

class String
    include I18n::StringExtensions
end

class Time
    include I18n::DateTimeExtensions
end
