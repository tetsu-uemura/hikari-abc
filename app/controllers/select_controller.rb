class SelectController < ApplicationController
  def top
  end
  def autoSelection
    @provider = ["なし","plala", "So-net", "BIGLOBE","@TCOM", "Yahoo!BB","@nifty",
      "DTI", "excite", "エディオンネット","OCN",
       "SYNAPSE", "楽天", "01光コアラ", "ANDLINE", "＠ネスク", "hi-ho", "GMO",
       "ic-net", "Tigers-net.com", "TikiTiki", "U-Pa!", "AsahiNet",
        "TNC",  "WAKWAK", "＠ちゃんぷるネット","au one net"]
  end

  def result
    @hikaris = Hikari.all
    @rank = autoSelect
    @rank = Hash[@rank.sort_by{ |_, v| -v }]
  end
  def all
    @hikaris = Hikari.all
  end
  def docomo
  end
  def softbank
  end
  def au
  end
  def nuro
  end
  def commufa
  end
  def sonet
  end
  def ocn
  end
  def biglobe
  end
  def unext
  end
  private
    def autoSelect
      d = params[:numberOfDocomo].to_i
      s = params[:numberOfSoftBank].to_i
      a = params[:numberOfAu].to_i
      y = params[:numberOfYmobile].to_i
      sim = params[:numberOfSIM].to_i
      if params[:fletsOrNot] == "加入中" then
        flets = 1
      else
        flets = 0
      end

      if params[:tvOrNot] == "利用する" then
        tv = 1
      else
        tv = 0
      end

      rank = {}
      for n in 1..9 do
        count = 0

        @hikari = Hikari.find(n)

        if @hikari.docomo then
          count = count + d * 2
        end
        if @hikari.softbank then
          if params[:telOrNot] == "利用する" then
            count = count + s * 2
          end
        end
        if @hikari.au then
          if params[:telOrNot] == "利用する" then
            count = count + a * 2
          end
        end
        if @hikari.ymobile then
          if params[:telOrNot] == "利用する" then
            count = count + y * 2
          end
        end
        if (@hikari.name == "OCN光") || (@hikari.name == "BIGLOBE光")  then
          count = count + sim
        end
        if @hikari.flets then
          count = count + flets
        end
        if !(@hikari.apartment) then
          if params[:type] == "マンションタイプ" then
            count = count - 1
            if @hikari.path == "nuro" then
              count = count - 1
            end
          end
        end
        if @hikari.tv then
          count = count + tv * 3
        end
        if @hikari.provider.include?(params[:provider]) then
          count = count + 1
        end
        if (@hikari.name == "NURO光") && (params[:area] != "関東") then
          count = -10
        end
        if (@hikari.name == "コミュファ光") && (params[:area] != "中部") then
          count = -10
        end
        count = count + @hikari.priority
        rank[n.to_s] = count
       end
      return rank
     end
end
