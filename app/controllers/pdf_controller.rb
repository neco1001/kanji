class PdfController < ApplicationController
  def test
    respond_to do |format|
      format.html
      format.pdf do
        test_pdf = TestPdf.new.render
        send_data test_pdf,
          filename:    'test.pdf',
          type:        'application/pdf',
          disposition: 'inline' # 画面に表示
      end
    end
  end
end
