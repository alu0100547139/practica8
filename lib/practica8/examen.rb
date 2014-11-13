#Clase examen
class Examen

include Comparable

attr_accessor :preg, :c, :dif, :a

    def initialize(preg,c,a,dif)
        @preg=preg
        @c=c
        @a=a
	@dif=dif
    end

    def to_s
        @aux = ""
        @aux = @aux + "@a.each{ |i| print i}"
        "(#{@preg},#{@aux})"
    end

	def <=>(other)
		# basarse en la dif
	end
end
