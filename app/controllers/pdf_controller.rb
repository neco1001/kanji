class PdfController < ApplicationController
  def test
    respond_to do |format|
      format.html
        @kanjis = Kanji.all
      format.pdf do
        kanji_ids = [params[:kanji_id_1], params[:kanji_id_2], params[:kanji_id_3], params[:kanji_id_4], params[:kanji_id_5]].reject(&:blank?)
        test_pdf = TestPdf.new(kanji_ids).render
        send_data test_pdf,
          filename:    'test.pdf',
          type:        'application/pdf',
          disposition: 'inline' # 画面に表示
      end
    end
  end
end
