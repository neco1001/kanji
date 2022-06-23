class PdfController < ApplicationController
  def test
    respond_to do |format|
      format.html
        @kanjis = KanjiCharacter.all
      format.pdf do
        questions = [params[:question_1], params[:question_2], params[:question_3], params[:question_4], params[:question_5]]
        test_pdf = TestPdf.new(questions).render
        send_data test_pdf,
          filename:    'test.pdf',
          type:        'application/pdf',
          disposition: 'inline' # 画面に表示
      end
    end
  end
end
