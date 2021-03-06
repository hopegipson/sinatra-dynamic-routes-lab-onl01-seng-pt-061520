require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squarenumber = @number * @number
    @squarenumber.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1, @word2, @word3, @word4, @word5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    #alt way to do it
   # @words = []
    #params.values.each {|word| @words << word}
    #@sentence = @words.join(" ")
    #"#{@sentence}."
  end

  get '/:operation/:number1/:number2' do
      @operation = params[:operation]
      @number1 = params[:number1].to_i
      @number2 = params[:number2].to_i
      case @operation.downcase
      when "add"
        "#{@number1 + @number2}"
      when "subtract"
        "#{@number1 - @number2}"
      when "divide"
        "#{@number1 / @number2}"
      when "multiply"
        "#{@number1 * @number2}"
      end
  end

end