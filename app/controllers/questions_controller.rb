class QuestionsController < ApplicationController
  def ask; end

  def reply
    @reply = if params['form'] == 'I am going to work'
               'Great'
             elsif params['form'][-1] == '?'
               'Silly question, get dressed and go to work!'
             else
               "I don't care, get dressed and go to work!"
             end
  end
end
