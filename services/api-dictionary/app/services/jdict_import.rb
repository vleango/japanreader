require "rexml/document"

REXML::Security.entity_expansion_limit = 1_000_000_000

# Rev 1.09
class JdictImport

  def self.call
    begin
      file = File.new( "#{Rails.root}/tmp/JMdict.xml" )
      doc = REXML::Document.new file
  
      doc.root.each_element("entry") do |entry|
        print "."
  
        # ent_seq - required
        ent_seq = entry.elements["ent_seq"].text
        db_entry = Entry.create!(ent_seq: ent_seq)
  
        # k_ele* - zero or more
        entry.each_element("k_ele") do |k_ele|
  
          # keb - required
          keb = k_ele.elements["keb"].text
          db_kele = db_entry.k_eles.create!(keb: keb)
  
          # ke_inf* - zero or more
          k_ele.each_element("ke_inf") do |ke_inf|
            text = ke_inf.text
            db_kele.ke_infs.create!(text: text)
          end
  
          # ke_pri* - zero or more
          k_ele.each_element("ke_pri") do |ke_pri|
            text = ke_pri.text
            db_kele.ke_pris.create!(text: text)
          end
        end
  
        # r_ele+ - one or more
        entry.each_element("r_ele") do |r_ele|

          # reb - required
          reb = r_ele.elements["reb"].text
          db_rele = db_entry.r_eles.create!(reb: reb)
  
          # re_nokanji? - zero or one
          r_ele.each_element("re_nokanji") do |re_nokanji|
            text = re_nokanji.text
            db_rele.update(re_nokanji: true)
          end
  
          # re_restr* - zero or more
          r_ele.each_element("re_restr") do |re_restr|
            text = re_restr.text
            db_rele.re_restrs.create!(text: text)
          end
  
          # re_inf* - zero or more
          r_ele.each_element("re_inf") do |re_inf|
            text = re_inf.text
            db_rele.re_infs.create!(text: text)
          end
  
          # re_pri* - zero or more
          r_ele.each_element("re_pri") do |re_pri|
            text = re_pri.text
            db_rele.re_pris.create!(text: text)
          end
        end
  
        # sense+ - one or more
        entry.each_element("sense") do |sense|
  
          db_sense = db_entry.senses.create!
  
          # stagk* - zero or more
          sense.each_element("stagk") do |stagk|
            text = stagk.text
            db_sense.stagks.create!(text: text)
          end
  
          # stagr* - zero or more
          sense.each_element("stagr") do |stagr|
            text = stagr.text
            db_sense.stagrs.create!(text: text)
          end
  
          # pos* - zero or more
          sense.each_element("pos") do |pos|
            text = pos.text
            db_sense.poses.create!(text: text)
          end
  
          # xref* - zero or more
          sense.each_element("xref") do |xref|
            text = xref.text
            db_sense.xrefs.create!(text: text)
          end
  
          # ant* - zero or more
          sense.each_element("ant") do |ant|
            text = ant.text
            db_sense.ants.create!(text: text)
          end
  
          # field* - zero or more
          sense.each_element("field") do |field|
            text = field.text
            db_sense.fields.create!(text: text)
          end
  
          # misc* - zero or more
          sense.each_element("misc") do |misc|
            text = misc.text
            db_sense.miscs.create!(text: text)
          end
  
          # s_inf* - zero or more
          sense.each_element("s_inf") do |s_inf|
            text = s_inf.text
            db_sense.s_infs.create!(text: text)
          end
  
          # lsource* - zero or more
          sense.each_element("lsource") do |lsource|
            text = lsource.text
  
            lang = lsource['lang']
            ls_type = lsource['ls_type']
            ls_wasei = lsource['ls_wasei']
  
            db_sense.lsources.create!(
              text: text,
              lang: lang || 'eng',
              ls_type: ls_type,
              ls_wasei: ls_wasei
            )
          end
  
          # dial* - zero or more
          sense.each_element("dial") do |dial|
            text = dial.text
            db_sense.dials.create!(text: text)
          end
  
          # gloss* - zero or more
          sense.each_element("gloss") do |gloss|
            text = gloss.text
  
            lang = gloss['lang'] # default eng
            g_type = gloss['g_type']
  
            if text.present?
              db_sense.glosses.create!(
                text: text, 
                lang: lang || 'eng', 
                g_type: g_type
              )
            end
          end
  
        end
  
      end; 0
    rescue => e
      byebug
    end
  end

end
