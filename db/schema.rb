# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140901090455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bisac", id: false, force: true do |t|
    t.integer  "id",          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version",     null: false
    t.string   "code"
    t.text     "headingtext"
  end

  create_table "bisacs", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bsa_products", id: false, force: true do |t|
    t.integer  "id",                  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version",             null: false
    t.string   "allowbulkpricing"
    t.string   "allowdiscount"
    t.string   "allowwebsite"
    t.boolean  "backorder"
    t.string   "binlocation"
    t.string   "bsaauthor"
    t.string   "bsabinding"
    t.string   "bsacolour"
    t.string   "bsafeaturesline1"
    t.string   "bsafeaturesline10"
    t.string   "bsafeaturesline11"
    t.string   "bsafeaturesline12"
    t.string   "bsafeaturesline13"
    t.string   "bsafeaturesline14"
    t.string   "bsafeaturesline2"
    t.string   "bsafeaturesline3"
    t.string   "bsafeaturesline4"
    t.string   "bsafeaturesline5"
    t.string   "bsafeaturesline6"
    t.string   "bsafeaturesline7"
    t.string   "bsafeaturesline8"
    t.string   "bsafeaturesline9"
    t.string   "bsaimagename"
    t.string   "bsaiscatholic"
    t.string   "bsaislarge"
    t.string   "bsaisred"
    t.string   "bsaitemid"
    t.text     "bsaitemname"
    t.string   "bsalanguage"
    t.string   "bsaproductgroup"
    t.datetime "bsapublishdate"
    t.string   "bsasize"
    t.string   "bsastockstatus"
    t.string   "bsatitle"
    t.string   "bsaversion"
    t.string   "bsawebcategory"
    t.string   "bsawebtextline1"
    t.string   "bsawebtextline2"
    t.string   "bsawebtextline3"
    t.string   "bsaweight"
    t.string   "isbn10"
    t.string   "isbn13"
    t.string   "landedcost"
    t.string   "lastsaledate"
    t.string   "leadtime"
    t.boolean  "matched"
    t.integer  "onix_product_id"
    t.string   "promorrpincgst"
    t.string   "publisher"
    t.string   "qtyonorder"
    t.string   "qtysoldmonthtodate"
    t.string   "qtysoldpreviousyear"
    t.string   "qtysoldyeartodate"
    t.string   "rrpexgst"
    t.string   "rrpincgst"
    t.string   "stockholdmaximumqty"
    t.string   "stockholdminimumqty"
    t.string   "stockonhand"
    t.string   "upc"
    t.string   "vendorcode"
    t.string   "vendordiscount"
    t.string   "vendorprice"
    t.string   "vendorproductid"
  end

  add_index "bsa_products", ["bsaitemid"], name: "mybsaproductitemidindex", using: :btree
  add_index "bsa_products", ["isbn10"], name: "mybsaproductisbn10index", using: :btree
  add_index "bsa_products", ["isbn13"], name: "mybsaproductisbn13index", using: :btree
  add_index "bsa_products", ["upc"], name: "mybsaproductupcindex", using: :btree
  add_index "bsa_products", ["vendorcode"], name: "mybsaproductvenderindex", using: :btree

  create_table "contributor_bios", id: false, force: true do |t|
    t.integer  "id",                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version",           null: false
    t.text     "biographicalnotes"
    t.string   "isbn13"
    t.string   "name"
    t.string   "nameid"
    t.string   "publishername"
  end

  add_index "contributor_bios", ["isbn13"], name: "mycontributorbioisbn13index", using: :btree
  add_index "contributor_bios", ["name"], name: "mycontributorbionameindex", using: :btree

  create_table "languages", id: false, force: true do |t|
    t.integer  "id",          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version",     null: false
    t.string   "bsacode"
    t.text     "description"
    t.string   "newbsacode"
  end

  create_table "netsuite_products", id: false, force: true do |t|
    t.integer  "id",                             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version",                        null: false
    t.float    "rrpexgst"
    t.float    "rrpincgst"
    t.text     "agerange"
    t.boolean  "allowbulkpricing"
    t.boolean  "allowdiscount"
    t.text     "artist"
    t.text     "audiencetype"
    t.text     "author"
    t.string   "bisacmainsubject"
    t.string   "bisacsubjecttheme"
    t.boolean  "backorder"
    t.string   "barcodetype"
    t.text     "biblecontents"
    t.text     "biblefeaturetags"
    t.text     "biblepurposetags"
    t.text     "biblereferencelocation"
    t.text     "bibletextorganization"
    t.text     "bibleversion"
    t.text     "binlocation"
    t.text     "biographicaldescription"
    t.string   "bsaitemid"
    t.text     "bsaitemname"
    t.text     "bsalanguage"
    t.text     "bsastockstatus"
    t.float    "bsavendorprice"
    t.text     "bsavendorproductid"
    t.text     "collectioncollectiontitle"
    t.string   "collectionproductpartnumber"
    t.text     "colorofcover"
    t.text     "colorofpageedge"
    t.text     "composer"
    t.text     "duration"
    t.text     "dvdregion"
    t.text     "editiontype"
    t.text     "editor"
    t.text     "editorinchief"
    t.text     "filesize"
    t.text     "illustratedby"
    t.string   "imprintname"
    t.string   "isbn10"
    t.string   "isbn13"
    t.float    "landedcost"
    t.datetime "lastsaledate"
    t.integer  "leadtime"
    t.float    "measurementheight"
    t.string   "measurementsizeunit"
    t.float    "measurementthickness"
    t.float    "measurementweight"
    t.string   "measurementweightunit"
    t.float    "measurementwidth"
    t.text     "narrator"
    t.integer  "noofpieces"
    t.integer  "numberofpages"
    t.integer  "numberofwords"
    t.text     "onixlanguage"
    t.text     "productform"
    t.text     "productformdescription"
    t.text     "productformdetail"
    t.text     "productpackaging"
    t.text     "productreviews"
    t.float    "promorrpincgst"
    t.datetime "publicationdate"
    t.string   "publishername"
    t.string   "publisherproductid"
    t.string   "publisherrecordreference"
    t.string   "publishingcountryofpublication"
    t.string   "publishingstatus"
    t.integer  "qtyonoder"
    t.integer  "qtysoldmonthtodate"
    t.integer  "qtysoldpreviousyear"
    t.integer  "qtysoldyeartodate"
    t.text     "revisedby"
    t.text     "speaker"
    t.text     "specialcovermaterial"
    t.integer  "stockholdmaximumqty"
    t.integer  "stockholdminimumqty"
    t.integer  "stockonhand"
    t.text     "studybibletype"
    t.text     "subtitle"
    t.string   "suppliercurrencycode"
    t.text     "suppliername"
    t.text     "suppliernamecode"
    t.integer  "supplierpackqantity"
    t.float    "supplierpriceamount"
    t.datetime "supplyexpectedshipdate"
    t.float    "textfontsize"
    t.text     "titletext"
    t.string   "upc"
  end

  add_index "netsuite_products", ["bsaitemid"], name: "mynetsuiteproductbsaitemidindex", using: :btree

  create_table "onix_products", id: false, force: true do |t|
    t.integer  "id",                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version",                null: false
    t.text     "audiencecode"
    t.text     "audienceranges"
    t.text     "barcodes"
    t.text     "basicversion"
    t.text     "bicmainsubject"
    t.text     "bisacmainsubject"
    t.text     "cityofpublication"
    t.text     "collateraldetails"
    t.text     "containeditems"
    t.text     "contentdetails"
    t.text     "contributors"
    t.text     "copyrightyear"
    t.text     "countryofpublication"
    t.text     "descriptivedetails"
    t.text     "editionnumber"
    t.text     "editions"
    t.text     "extents"
    t.text     "imprints"
    t.string   "isbn10"
    t.string   "isbn13"
    t.text     "languages"
    t.text     "mainsubjects"
    t.boolean  "matched"
    t.text     "measures"
    t.text     "mediafiles"
    t.text     "notificationtype"
    t.text     "numberofpages"
    t.text     "numberofpieces"
    t.string   "onixversion"
    t.text     "othertexts"
    t.text     "productform"
    t.text     "productformdescription"
    t.text     "productformdetails"
    t.text     "productformfeatures"
    t.text     "productidentifiers"
    t.text     "productpackaging"
    t.text     "productsupplies"
    t.text     "publicationdate"
    t.string   "publisherhandler"
    t.text     "publishers"
    t.text     "publishingdetails"
    t.text     "publishingstatus"
    t.text     "recordreference"
    t.text     "recordsourcename"
    t.text     "recordsourcetype"
    t.text     "relatedmaterials"
    t.text     "relatedproducts"
    t.text     "religioustexts"
    t.text     "salesrightss"
    t.text     "serieses"
    t.text     "subjects"
    t.text     "supplierdetails"
    t.text     "titles"
    t.string   "upc"
  end

  add_index "onix_products", ["isbn10"], name: "myonixproductisbn10index", using: :btree
  add_index "onix_products", ["isbn13"], name: "myonixproductisbn13index", using: :btree
  add_index "onix_products", ["upc"], name: "myonixproductupcindex", using: :btree

end
