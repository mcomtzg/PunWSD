window.wp=window.wp||{};var inlineEditTax;!function(a,b){inlineEditTax={init:function(){var b=this,c=a("#inline-edit");b.type=a("#the-list").attr("data-wp-lists").substr(5),b.what="#"+b.type+"-",a("#the-list").on("click","a.editinline",function(){return inlineEditTax.edit(this),!1}),c.keyup(function(a){if(27===a.which)return inlineEditTax.revert()}),a(".cancel",c).click(function(){return inlineEditTax.revert()}),a(".save",c).click(function(){return inlineEditTax.save(this)}),a("input, select",c).keydown(function(a){if(13===a.which)return inlineEditTax.save(this)}),a('#posts-filter input[type="submit"]').mousedown(function(){b.revert()})},toggle:function(b){var c=this;"none"===a(c.what+c.getId(b)).css("display")?c.revert():c.edit(b)},edit:function(b){var c,d,e,f=this;return f.revert(),"object"==typeof b&&(b=f.getId(b)),c=a("#inline-edit").clone(!0),d=a("#inline_"+b),a("td",c).attr("colspan",a("th:visible, td:visible",".wp-list-table.widefat:first thead").length),a(f.what+b).hide().after(c).after('<tr class="hidden"></tr>'),e=a(".name",d),e.find("img").replaceWith(function(){return this.alt}),e=e.text(),a(':input[name="name"]',c).val(e),e=a(".slug",d),e.find("img").replaceWith(function(){return this.alt}),e=e.text(),a(':input[name="slug"]',c).val(e),a(c).attr("id","edit-"+b).addClass("inline-editor").show(),a(".ptitle",c).eq(0).focus(),!1},save:function(c){var d,e,f=a('input[name="taxonomy"]').val()||"";return"object"==typeof c&&(c=this.getId(c)),a("table.widefat .spinner").addClass("is-active"),d={action:"inline-save-tax",tax_type:this.type,tax_ID:c,taxonomy:f},e=a("#edit-"+c).find(":input").serialize(),d=e+"&"+a.param(d),a.post(ajaxurl,d,function(d){var e,f,g,h=a("#edit-"+c+" .inline-edit-save .error");a("table.widefat .spinner").removeClass("is-active"),d?-1!==d.indexOf("<tr")?(a(inlineEditTax.what+c).siblings("tr.hidden").addBack().remove(),f=a(d).attr("id"),a("#edit-"+c).before(d).remove(),f?(g=f.replace(inlineEditTax.type+"-",""),e=a("#"+f)):(g=c,e=a(inlineEditTax.what+c)),a("#parent").find("option[value="+g+"]").text(e.find(".row-title").text()),e.hide().fadeIn(400,function(){e.find(".editinline").focus(),b.a11y.speak(inlineEditL10n.saved)})):(h.html(d).show(),b.a11y.speak(h.text())):(h.html(inlineEditL10n.error).show(),b.a11y.speak(inlineEditL10n.error))}),!1},revert:function(){var b=a("table.widefat tr.inline-editor").attr("id");b&&(a("table.widefat .spinner").removeClass("is-active"),a("#"+b).siblings("tr.hidden").addBack().remove(),b=b.substr(b.lastIndexOf("-")+1),a(this.what+b).show().find(".editinline").focus())},getId:function(b){var c="TR"===b.tagName?b.id:a(b).parents("tr").attr("id"),d=c.split("-");return d[d.length-1]}},a(document).ready(function(){inlineEditTax.init()})}(jQuery,window.wp);