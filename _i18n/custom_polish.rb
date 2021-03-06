{
  :'pl' => {
    :date => {
      :month_names => lambda { |date_or_time, opts|
        if opts[:format] =~ /(%d|%e)(.*)(%B)/
          [nil, 'stycznia', 'lutego', 'marca', 'kwietnia', 'maja', 'czerwca',
           'lipca', 'sierpnia', 'września', 'października', 'listopada',
           'grudnia']
        else
          [nil, 'Styczeń', 'Luty', 'Marzec', 'Kwiecień', 'Maj', 'Czerwiec',
           'Lipiec', 'Sierpień', 'Wrzesień', 'Październik', 'Listopad',
           'Grudzień']
        end
      },
      :abbr_month_names => lambda { |date_or_time, opts|
        if opts[:format] =~ /(%d|%e)(.*)(%b)/
          [nil, 'sty.', 'lut.', 'mar.', 'kwi.', 'maj.', 'cze.', 'lip.', 'sie.',
           'wrz.', 'paź.', 'lis.', 'gru.']
        else
          [nil, 'Sty.', 'Lut.', 'Mar.', 'Kwi.', 'Maj', 'Cze.', 'Lip.', 'Sie.',
           'Wrz.', 'Paź.', 'Lis.', 'Gru.']
        end
      },
      :abbr_day_names => lambda { |date_or_time, opts|
        if opts[:format] =~ /^%a/
          ['Niedz.', 'Pon.', 'Wt.', 'Śr.', 'Czw.', 'Pt.', 'Sob.']
        else
          ['niedz.', 'pon.', 'wt.', 'śr.', 'czw.', 'pt.', 'sob.']
        end
      }
    }
  }
}
