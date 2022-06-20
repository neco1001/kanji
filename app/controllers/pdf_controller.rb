class PdfController < ApplicationController
  def test
    questions = [params[:question_1], params[:question_2], params[:question_3], params[:question_4], params[:question_5]]
    respond_to do |format|
      format.html
      format.pdf do
        test_pdf = TestPdf.new(questions).render
        send_data test_pdf,
          filename:    'test.pdf',
          type:        'application/pdf',
          disposition: 'inline' # 画面に表示
      end
    end
  end
end
