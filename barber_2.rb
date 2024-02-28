require 'sinatra'

get '/' do
  erb :index
end

post '/' do
  @user_name = params[:@user_name]
  @phone = params[:@phone]
  @time = params[:@time]

  @title = "Спасибо!"
  @message = "#{@user_name}, мы будем ждать вас #{@time}"

      f = File.open './public/Users.txt', 'a' # образует запись в файл, а - добавляет
      #в конец файла, c доступом с брайузера
      f.write "
      Клиент: #{@user_name}, телефон: #{@phone}, дата/время: #{@time}"
      f.close

  erb :message
end
