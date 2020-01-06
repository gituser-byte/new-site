#initclip 1
function FFlippingBookConstants()
{
    this.version = "1.8.6";
    this.DELIMITER = "%!!!%";
    this.INVALID_XML_MSG = "FFlippingBookError: Incorrect XML source..";
    this.MEDIA_INTERVAL = 300;
    this.MEDIA_TIMEOUT = 3000;
    this.PAGE_TIMEOUT = 3000;
    this.DEF_PAGE_NAME = "fpage";
    this.PAGE_SHADOW_LAYER_NAME = "shadows";
    this.PAGE_BG_NAME = "bg";
    this.PAGE_HOLDER_NAME = "holder";
    this.PAGE_HOLDER_PARENT_NAME = "parent";
    this.PAGE_PRELOADER_NAME = "loader";
    this.PAGE_MEDIA_NAME = "media";
    this.PAGE_MASK_NAME = "pmask";
    this.SYMBOL_PRELOADER_NAME = "FBStandardPreloader";
    this.PRELOADER_BAR_NAME = "bar_mc";
    this.MAIN_OBJ_ID = "MAIN";
    this.MODEL_OBJ_ID = "MODEL";
    this.CACHE_OBJ_ID = "CACHE";
    this.CONSTANTS_OBJ_ID = "CONSTANTS";
    this.LOADER_OBJ_ID = "LOADER";
    this.VIEW_OBJ_ID = "VIEW";
    this.WIDTH_NODE_NAME = "WIDTH";
    this.HEIGHT_NODE_NAME = "HEIGHT";
    this.ALWAYS_OPENED_NODE_NAME = "ALWAYSOPENED";
    this.SCALE_CONTENT_NODE_NAME = "SCALECONTENT";
    this.AUTOFLIP_NODE_NAME = "AUTOFLIP";
    this.FLIP_ON_CLICK_NODE_NAME = "FLIPONCLICK";
    this.MOVE_SPEED_NODE_NAME = "MOVESPEED";
    this.CLOSE_SPEED_NODE_NAME = "CLOSESPEED";
    this.GOTO_SPEED_NODE_NAME = "GOTOSPEED";
    this.FLIP_SOUND_NODE_NAME = "FLIPSOUND";
    this.PAGE_BACK_NODE_NAME = "PAGEBACK";
    this.LOAD_ON_DEMAND_NODE_NAME = "LOADONDEMAND";
    this.CACHE_PAGES_NODE_NAME = "CACHEPAGES";
    this.USE_PRELOADER_NODE_NAME = "USEPRELOADER";
    this.USER_PRELOADER_NODE_NAME = "USERPRELOADERID";
    this.CACHE_SIZE_NODE_NAME = "CACHESIZE";
    this.PRELOADER_TYPE_NODE_NAME = "PRELOADERTYPE";
    this.PAGES_NODE_NAME = "PAGES";
    this.FIRST_PAGE_NODE_NAME = "FIRSTPAGE";
    this.STATIC_SHADOWS_DEPTH_NODE_NAME = "STATICSHADOWSDEPTH";
    this.DYNAMIC_SHADOWS_DEPTH_NODE_NAME = "DYNAMICSHADOWSDEPTH";
    this.PAGE_STATIC_SHADOW1_NAME = "STATICSH1";
    this.PAGE_STATIC_SHADOW2_NAME = "STATICSH2";
    this.FLIP_SOUND_SYMBOL_NAME = "FFlippingBookSound";
    this.NUM_TYPE_NAME = "number";
    this.BOOL_TYPE_NAME = "boolean";
    this.BOOL_TRUE_VAL = "TRUE";
    this.BOOL_FALSE_VAL = "FALSE";
    this.PRELOADER_WIDTH_SCALE = 2;
    this.PRELOADER_HEIGHT_SCALE = 30;
    this.MIN_PAGE_OFFSET = 9.900000E-001;
    this.MIN_PAGE_OFFSET2 = 9.900000E-001;
    this.DEF_PRELOADER_TYPE = "Progress Bar";
    this.DEF_CACHE_SIZE = 4;
    this.DEF_WIDTH = 100;
    this.DEF_HEIGHT = 100;
    this.DEF_FIRST_PAGE = 0;
    this.DEF_SHADOWS_DEPTH = 1;
    this.DEF_MOVE_SPEED = 2;
    this.DEF_CLOSE_SPEED = 3;
    this.DEF_GOTO_SPEED = 3;
    this.DEF_ALWAYS_OPENED = false;
    this.DEF_FLIP_ON_CLICK = true;
    this.DEF_LOAD_ON_DEMAND = true;
    this.DEF_CACHE_PAGES = true;
    this.DEF_USE_PRELOADER = true;
    this.DEF_PAGEBACK = 11447982;
    this.DEF_SCALE_CONTENT = true;
    this.DEF_SOUND = "default";
    this.DEF_NO_SOUND = "";
    this.DEF_AUTOFLIP = 50;
    this.EMPTY_PAGE = "_empty";
    this.TRANSPARENT_PAGE1 = "_transp1";
    this.TRANSPARENT_PAGE2 = "_transp2";
    this.INIT_STATE = 0;
    this.UNACTIVE_STATE = 1;
    this.FLIPPING_STATE = 2;
    this.FLIPOVER_STATE = 3;
    this.FLIPBACK_STATE = 4;
	this.FLIPBACK_STATE = 5;
    this.AUTOFLIP_STATE = 6;
    this.GOTOPAGE_STATE = 7;
    this.FLIP_GOTOPAGE_STATE = 8;
    this.FLIP_CORNER_STATE = 9;
    this.START_FLIP_CORNER_STATE = 10;
    this.CACHE_DEPTH = 100;
    this.BOOK_DEPTH = 10000;
    this.PAGE_01_MC_NAME = "p01";
    this.PAGE_02_MC_NAME = "p02";
    this.PAGE_03_MC_NAME = "p03";
    this.PAGE_04_MC_NAME = "p04";
    this.MASK_03_MC_NAME = "m03";
    this.MASK_12_MC_NAME = "m12";
    this.SHADOW_03_MC_NAME = "s03";
    this.SHADOW_04_MC_NAME = "s04";
    this.SH_MASK_03_MC_NAME = "shm03";
    this.SH_MASK_04_MC_NAME = "shm04";
    this.PAGES_SH_MC_NAME = "s12";
    this.PAGES_SHM_MC_NAME = "shm12";
    this.STATIC_SHADOW_MC_NAME = "shStatic";
    this.PAGE01_DEPTH = 8;
    this.PAGE02_DEPTH = 5;
    this.PAGE03_DEPTH = 4;
    this.PAGE04_DEPTH = 0;
    this.SH12_SCALE = 4.000000E-001;
    this.SH3_SCALE = 1.600000E+000;
    this.SPEED_DIV = 10;
} // End of the function
function FFlippingBookBroker()
{
    this.objects = new Array();
} // End of the function
function FFlippingBookCache(broker, usePreloader, cachePages, loadOnDemand, bgColor)
{
    this._broker = broker;
    this._const = new FFlippingBookConstants();
    this._broker.registerObject(this._const.CACHE_OBJ_ID, this);
    this._baseObject = this._broker.objects[this._const.MAIN_OBJ_ID];
    this._pagesDepth = this._const.CACHE_DEPTH;
    this.usePreloader = usePreloader;
    this.cachePages = cachePages;
    this.loadOnDemand = loadOnDemand;
    this.bgColor = bgColor;
    this.__pagesLinks = new Array();
    this.__pagesProcess = new Array();
    this.__pagesHolders = new Array();
    this.__pagesLoaders = new Array();
    this.__pagesTimeouts = new Array();
    this.__pagesLoading = new Array();
    this.__pagesExt = new Array();
    this.__pagesDepths = new Array();
    this.__pagesBacks = new Array();
    this.__pagesMasks = new Array();
    this.__checkCompleted = new Array();
    this.__pagesShadows1 = new Array();
    this.__pagesShadows2 = new Array();
    this._sound = new Sound(this._baseObject);
    this._isSound = true;
    this._soundTimeout = this._const.MEDIA_TIMEOUT;
    this.sd = this._baseObject.shadowsDepth;
    this.ssd = this._baseObject.staticShadowsDepth;
    this._mediaComplete = false;
    this._soundComplete = false;
    this._pagesComplete = false;
    this.extXML = new XML();
    this.extXML.ignoreWhite = true;
    this.extXML._parentObj = this;
    this.extXML.onLoad = this.onXMLComplete;
} // End of the function
function FFlippingBookModel(pagesSet, firstPage, alwaysOpened, broker)
{
    this._broker = broker;
    this._const = new FFlippingBookConstants();
    this._broker.registerObject(this._const.MODEL_OBJ_ID, this);
    this._cache = this._broker.objects[this._const.CACHE_OBJ_ID];
    this._baseObj = this._broker.objects[this._const.MAIN_OBJ_ID];
    this._userPages = pagesSet;
    this._curPageNumbers = new Array(4);
    this._markEqual();
    this._realPages = this._copyArray(pagesSet);
    this.alwaysOpened = alwaysOpened;
    this.__direction = -1;
    this._makeItReal();
    this.addProperty("_userCurrentPage2", this.getUserCurrentPage2, null);
    this._userCurrentPage = firstPage;
    this._currentPage = this._realPageNumber(firstPage);
} // End of the function
function FFlippingBookClass()
{
    this._constants = new FFlippingBookConstants();
    this._broker = new FFlippingBookBroker();
    this._broker.registerObject(this._constants.MAIN_OBJ_ID, this);
    this.usePreloader = this.preloaderType != "None";
    this._cache = new FFlippingBookCache(this._broker, this.usePreloader, this.cachePages, this.loadOnDemand, this.pageBack);
    this.pageParameters = new Array();
    this.pageIndexes = new Array();
    this.addProperty("enabledProp", this.getEnabledProp, this.setEnabledProp);
    this.addProperty("totalPages", this.getTotalPages, null);
    this.addProperty("leftPageNumber", this.getLeftPageNumber, null);
    this.addProperty("rightPageNumber", this.getRightPageNumber, null);
    this.addProperty("autoFlipProp", this.getAutoFlipProp, this.setAutoFlipProp);
    this.addProperty("flipOnClickProp", this.getFlipOnClick, this.setFlipOnClick);
    this.addProperty("moveSpeedProp", this.getMoveSpeedProp, this.setMoveSpeedProp);
    this.addProperty("closeSpeedProp", this.getCloseSpeedProp, this.setCloseSpeedProp);
    this.addProperty("gotoSpeedProp", this.getGotoSpeedProp, this.setGotoSpeedProp);
    this.addProperty("width", this.getWidth, this.setWidth);
    this.addProperty("height", this.getHeight, this.setHeight);
    this.addProperty("alwaysOpenedProp", this.getAlwaysOpenedProp, null);
    this.enabledProp = true;
    this._a = Math.abs(this._rotation / 180 * 3.141593E+000);
    this._sina = Math.sin(this._a);
    this._cosa = Math.cos(this._a);
    this._W = this._width;
    this._H = this._height;
    this._w = (this._H * this._sina - this._W * this._cosa) / (this._sina * this._sina - this._cosa * this._cosa);
    this._h = (this._H * this._cosa - this._W * this._sina) / (this._cosa * this._cosa - this._sina * this._sina);
    this.setSize(this._w, this._h);
    this.box_mc._visible = false;
    if (this.extXML != "")
    {
        this._cache.loadExternalXML(this.extXML);
    }
    else
    {
        this._getMedia();
    } // end else if
} // End of the function
function FFlippingBookView(bw, bh, autoFlip, flipOnClick, broker)
{
    this._const = new FFlippingBookConstants();
    this._end = false;
    this._broker = broker;
    this._broker.registerObject(this._const.VIEW_OBJ_ID, this);
    this._baseObj = this._broker.objects[this._const.MAIN_OBJ_ID];
    this._cache = this._broker.objects[this._const.CACHE_OBJ_ID];
    this._model = this._broker.objects[this._const.MODEL_OBJ_ID];
    this._pageWidth = this._baseObj._bookWidth / 2;
    this._pageHeight = this._baseObj._bookHeight;
    this._autoFlip = this._baseObj.autoFlip;
    this._flipOnClick = this._baseObj.flipOnClick;
    this._pageSpeed = this._baseObj.moveSpeed / this._const.SPEED_DIV;
    this._closeSpeed = this._baseObj.closeSpeed / this._const.SPEED_DIV;
    this._gotoSpeed = this._baseObj.gotoSpeed / this._const.SPEED_DIV;
    this._minOffset = this._const.MIN_PAGE_OFFSET;
    this._flipSound = this._cache._sound;
    this._bookState = this._const.INIT_STATE;
    this._depth = this._const.BOOK_DEPTH;
    this.radIndex = 5.729578E+001;
    this._transpPage = 0;
    this.__ox = 0;
    this.__oy = 0;
    this.__oldX = 0;
    this.__oldY = 0;
    this.__p4Empty = false;
    this.__shadowHeight = 2 * Math.sqrt(this._pageHeight * this._pageHeight + this._pageWidth * this._pageWidth);
    this.__pagesShadowHeight = 2 * Math.sqrt(4 * this._pageHeight * this._pageHeight + this._pageWidth * this._pageWidth);
    this._radIndex = 5.729578E+001;
    this.__gotoPageIndex = 0;
    this.sd = this._baseObj.shadowsDepth;
    this._drawBook();
    this._baseObj.onMouseDown = this.__onMouseDown;
    this._baseObj.onMouseUp = this.__onMouseUp;
    this._baseObj.onEnterFrame = this.__onEnterFrame;
    this._model.putPage();
} // End of the function
FFlippingBookBroker.prototype.registerObject = function (id, obj)
{
    this.objects[id] = obj;
};
FFlippingBookCache.prototype._stripItem = function (str)
{
    var _loc2 = str.indexOf(this._const.DELIMITER) + this._const.DELIMITER.length;
    return (str.substr(_loc2));
};
FFlippingBookCache.prototype.loadExternalXML = function (src)
{
    if (src != "")
    {
        this.extXML.load(src);
    }
    else
    {
        this._baseObject._onXMLComplete(false);
    } // end else if
};
FFlippingBookCache.prototype.onXMLComplete = function (success)
{
    if (success && this.status == 0)
    {
        this._parentObj._baseObject._onXMLComplete();
    }
    else if (this.status != 0)
    {
        trace (this._parentObj._const.INVALID_XML_MSG);
    } // end else if
};
FFlippingBookCache.prototype.loadMedia = function (pagesSet, flipSound, pageBack, w, h)
{
    this._soundSrc = flipSound;
    this._bgColor = pageBack;
    this._realPages = pagesSet;
    this._pageWidth = w / 2;
    this._pageHeight = h;
    this._loadFlipSound();
    this._loadPages();
    if (!this.loadOnDemand)
    {
        this._baseObject.progress = 0;
        this.__placeOverallPreloader();
    } // end if
    this._mediaInterval = setInterval(this.__checkMedia, this._const.MEDIA_INTERVAL, this);
};
FFlippingBookCache.prototype._loadFlipSound = function ()
{
    this._soundComplete = false;
    if (this._soundSrc == this._const.DEF_NO_SOUND || this._soundSrc == undefined)
    {
        this._isSound = false;
        this._soundComplete = true;
    }
    else
    {
        this._sound.attachSound(this._soundSrc);
        if (this._sound.duration == undefined)
        {
            this._sound.loadSound(this._soundSrc, false);
        } // end if
        this._soundComplete = false;
        this._isSound = false;
    } // end else if
};
FFlippingBookCache.prototype._getProgress = function ()
{
    var _loc2 = 0;
    var _loc3 = 0;
    for (var _loc4 in this.__pagesProcess)
    {
        if (this.__pagesExt[_loc4])
        {
            if (!isNaN(this.__pagesProcess[_loc4]))
            {
                _loc2 = _loc2 + this.__pagesProcess[_loc4];
            } // end if
            ++_loc3;
        } // end if
    } // end of for...in
    return (_loc2 / _loc3);
};
FFlippingBookCache.prototype.__checkMedia = function (obj)
{
    if (!obj._soundComplete)
    {
        if (obj._sound.getBytesLoaded() == obj._sound.getBytesTotal() || obj._sound.getBytesTotal() == undefined)
        {
            if (obj._sound.getBytesTotal == 0 && obj._soundTimeout > 0)
            {
                obj._soundTimeout = obj._soundTimeout - obj._const.MEDIA_INTERVAL;
            }
            else if (obj._sound.getBytesTotal == undefined && obj._soundTimeout <= 0)
            {
                obj._isSound = false;
                obj._soundComplete = true;
            }
            else
            {
                obj._isSound = true;
                obj._soundComplete = true;
            } // end if
        } // end else if
    } // end else if
    if (!obj._pagesComplete && !obj.loadOnDemand)
    {
        obj._pagesComplete = true;
        for (src in obj.__pagesProcess)
        {
            if (obj.__pagesProcess[src] < 100 || obj.__checkCompleted[src] == 1 || isNaN(obj.__pagesProcess[src]))
            {
                var _loc2 = obj.__pagesHolders[src].getBytesLoaded() / obj.__pagesHolders[src].getBytesTotal() * 100;
                if (obj.usePreloader)
                {
                    obj.__pagesLoaders[src].setProgress(_loc2);
                } // end if
                obj.__pagesProcess[src] = _loc2;
                obj.__pagesHolders[src].progress = _loc2;
                obj._baseObject.progress = obj._getProgress();
                obj.preloader.setProgress(obj._baseObject.progress);
                obj.__pagesTimeouts[src] = obj.__pagesTimeouts[src] - obj._const.MEDIA_INTERVAL;
                if (_loc2 == 100 && obj.__pagesHolders[src].getBytesLoaded() > 4 && obj.__checkCompleted[src] == 1)
                {
                    obj._baseObject._setPageParameters(obj.__pagesHolders[src], src, true);
                    obj.__pagesBacks[src]._visible = false;
                    obj._baseObject._setVisible();
                    obj.__pagesHolders[src].progress = 100;
                    obj.__pagesLoaders[src].removeMovieClip();
                    if (obj._baseObject.scaleContent)
                    {
                        obj.__pagesHolders[src]._width = obj._pageWidth;
                        obj.__pagesHolders[src]._height = obj._pageHeight;
                    }
                    else
                    {
                        obj.__pagesHolders[src].setMask(obj.__pagesMasks[src]);
                    } // end else if
                    obj.__pagesHolders[src]._parent._visible = true;
                    obj.__pagesProcess[src] = _loc2;
                    if (obj._model == undefined)
                    {
                        obj._model = obj._broker.objects[obj._const.MODEL_OBJ_ID];
                    } // end if
                    obj._baseObject.onPageLoad(obj._stripItem(src), obj.__pagesHolders[src].pageNumber);
                }
                else
                {
                    obj._pagesComplete = false;
                } // end else if
                if (_loc2 == 100 && obj.__pagesHolders[src].getBytesLoaded() > 4)
                {
                    obj.__checkCompleted[src] = 1;
                } // end if
            } // end if
        } // end of for...in
    } // end if
    if (obj._soundComplete && (obj._pagesComplete || obj.loadOnDemand))
    {
        clearInterval(obj._mediaInterval);
        obj._baseObject._onMediaComplete();
        if (obj._pagesComplete)
        {
            obj._baseObject.progress = 100;
            obj.preloader.removeMovieClip();
        } // end if
    } // end if
};
FFlippingBookCache.prototype._loadPages = function ()
{
    var _loc6 = this._realPages.length;
    for (var _loc2 = 0; _loc2 < _loc6; ++_loc2)
    {
        if (this.__pagesLinks[this._realPages[_loc2]] == undefined)
        {
            this.__pagesLinks[this._realPages[_loc2]] = this.__createPage(this._const.DEF_PAGE_NAME + "_" + _loc2, this._realPages[_loc2]);
            this.__pagesLinks[this._realPages[_loc2]]._y = -this._pageHeight / 2;
            this.__pagesLinks[this._realPages[_loc2]]._visible = false;
        } // end if
    } // end of for
    for (src in this.__pagesLinks)
    {
        this.__pagesLoading[src] = false;
        var _loc4 = this._baseObject.pageParameters[this._baseObject.pageIndexes[src]];
        var _loc5 = this.__pagesHolders[src].attachMovie(this._stripItem(src), this._const.PAGE_MEDIA_NAME, 0);
        if (_loc5 == undefined && src != this._const.TRANSPARENT_PAGE1 && src != this._const.TRANSPARENT_PAGE2 && src != this._const.EMPTY_PAGE)
        {
            _loc4 = this._baseObject.pageParameters[this._baseObject.pageIndexes[src]];
            this.__pagesHolders[src]._parent.params = new Object();
            this.__pagesHolders[src]._parent.params = _loc4;
            this._baseObject._setPageParameters(this.__pagesHolders[src], src, false);
            this.__pagesProcess[src] = 0;
            this.__pagesExt[src] = true;
            this.__pagesTimeouts[src] = this._const.PAGE_TIMEOUT;
            if (!this.loadOnDemand)
            {
                this.__pagesHolders[src]._parent._visible = false;
                this.__pagesHolders[src].loadMovie(this._stripItem(src));
            } // end if
            if (this.usePreloader)
            {
                var _loc3 = this.__pagesLinks[src];
                this.__placePreloader(_loc3);
                this.__pagesLoaders[src] = _loc3[this._const.PAGE_PRELOADER_NAME];
            } // end if
            this.__pagesHolders[src].progress = 0;
            continue;
        } // end if
        this.__pagesExt[src] = false;
        this.__pagesProcess[src] = 100;
        this.__pagesHolders[src].progress = 100;
        this.__pagesHolders[src].params = new Object();
        this.__pagesHolders[src].params = _loc4;
        this._baseObject._setPageParameters(this.__pagesHolders[src].media, src, true);
        this._baseObject._setVisible();
        if (src != this._const.TRANSPARENT_PAGE1 && src != this._const.TRANSPARENT_PAGE2 && src != this._const.EMPTY_PAGE)
        {
            this.__pagesBacks[src]._visible = false;
        } // end if
        if (this._baseObject.scaleContent)
        {
            this.__pagesHolders[src]._width = this._pageWidth;
            this.__pagesHolders[src]._height = this._pageHeight;
            continue;
        } // end if
        this.__pagesHolders[src].setMask(this.__pagesMasks[src]);
    } // end of for...in
};
FFlippingBookCache.prototype.__createPage = function (src, id)
{
    var _loc3 = this._baseObject.createEmptyMovieClip(src, this._pagesDepth++);
    var _loc4 = _loc3.createEmptyMovieClip(this._const.PAGE_HOLDER_PARENT_NAME, 1);
    if (id != this._const.TRANSPARENT_PAGE1 && id != this._const.TRANSPARENT_PAGE2)
    {
        var _loc5 = _loc3.createEmptyMovieClip(this._const.PAGE_BG_NAME, 0);
        var _loc6 = _loc3.createEmptyMovieClip(this._const.PAGE_SHADOW_LAYER_NAME, 100);
        this.__drawBack(_loc5);
        this.__pagesBacks[id] = _loc5;
        if (id != this._const.EMPTY_PAGE)
        {
            this.__pagesHolders[id] = _loc4.createEmptyMovieClip(this._const.PAGE_HOLDER_NAME, 0);
            this.__pagesProcess[id] = 0;
            if (!this._baseObject.scaleContent)
            {
                this.__pagesMasks[id] = _loc4.createEmptyMovieClip(this._const.PAGE_MASK_NAME, 100);
                this.__drawBack(this.__pagesMasks[id]);
            } // end if
        }
        else
        {
            this.__pagesProcess[id] = 100;
        } // end else if
        var _loc8 = this.__pagesShadows1[id] = _loc6.createEmptyMovieClip(this._const.PAGE_STATIC_SHADOW1_NAME, 10);
        var _loc7 = this.__pagesShadows2[id] = _loc6.createEmptyMovieClip(this._const.PAGE_STATIC_SHADOW2_NAME, 11);
        this.__drawStaticShadows(_loc8, _loc7);
    }
    else
    {
        this.__pagesHolders[id] = 100;
    } // end else if
    return (_loc3);
};
FFlippingBookCache.prototype.__drawStaticShadows = function (mc1, mc2)
{
    var pw = this._pageWidth;
    var sw = pw / 3;
    var sh = this._pageHeight;
    var colors = [0, 0];
    var ratios = [0, 255];
    var alphas = [0, 20 * this.ssd];
    var matrix = {matrixType: "box", x: pw - sw, y: 0, w: sw, h: sh, r: 0};
    with (mc1)
    {
        moveTo(pw - sw, 0);
        beginGradientFill("linear", colors, alphas, ratios, matrix);
        lineTo(pw, 0);
        lineTo(pw, sh);
        lineTo(pw - sw, sh);
        lineTo(pw - sw, 0);
        endFill();
    } // End of with
    colors = [0, 0];
    ratios = [0, 255];
    alphas = [20 * this.ssd, 0];
    matrix = {matrixType: "box", x: 0, y: 0, w: sw, h: sh, r: 0};
    with (mc2)
    {
        moveTo(0, 0);
        beginGradientFill("linear", colors, alphas, ratios, matrix);
        lineTo(sw, 0);
        lineTo(sw, sh);
        lineTo(0, sh);
        lineTo(0, 0);
        endFill();
    } // End of with
};
FFlippingBookCache.prototype.__placePreloader = function (mc)
{
    var _loc2;
    switch (this._baseObject.preloaderType)
    {
        case "Progress Bar":
        {
            _loc2 = "FBStandardPreloader";
            break;
        } 
        case "Round":
        {
            _loc2 = "FBRoundPreloader";
            break;
        } 
        case "User Defined":
        {
            _loc2 = this._baseObject.userPreloaderId;
            break;
        } 
    } // End of switch
    var _loc3 = mc.attachMovie(_loc2, this._const.PAGE_PRELOADER_NAME, 2);
    var _loc5 = this._pageWidth / 2;
    var _loc4 = this._pageHeight / 2;
    _loc3._x = Math.round(_loc5);
    _loc3._y = Math.round(_loc4);
    _loc3.setProgress(0);
};
FFlippingBookCache.prototype.__placeOverallPreloader = function ()
{
    var _loc2;
    switch (this._baseObject.preloaderType)
    {
        case "Progress Bar":
        {
            _loc2 = "FBStandardPreloader";
            break;
        } 
        case "Round":
        {
            _loc2 = "FBRoundPreloader";
            break;
        } 
        case "User Defined":
        {
            _loc2 = this._baseObject.userPreloaderId;
            break;
        } 
    } // End of switch
    this.preloader = this._baseObject.createEmptyMovieClip("overall_preloader", 20);
    this.preloader = this.preloader.attachMovie(_loc2, this._const.PAGE_PRELOADER_NAME, 2);
    loader._x = 0;
    loader._y = 0;
};
FFlippingBookCache.prototype.__drawBack = function (mc)
{
    with (mc)
    {
        moveTo(0, 0);
        beginFill(this.bgColor, 100);
        lineTo(this._pageWidth, 0);
        lineTo(this._pageWidth, this._pageHeight);
        lineTo(0, this._pageHeight);
        lineTo(0, 0);
        endFill();
    } // End of with
};
FFlippingBookCache.prototype.getPage = function (src)
{
    var _loc3 = this.__pagesLinks[src];
    if (!this.loadOnDemand)
    {
        return (_loc3);
    } // end if
    if (!this.__pagesLoading[src] && this.__pagesProcess[src] == 0 || !this.cachePages && this.__pagesExt[src] && this.__pagesProcess[src] == 100)
    {
        this.__pagesHolders[src]._parent._visible = false;
        this.__pagesHolders[src].loadMovie(this._stripItem(src));
        this.__pagesLoading[src] = true;
        this.__pagesBacks[src]._visible = true;
        this.__pagesLoaders[src]._visible = true;
        if (!this._pagesInterval)
        {
            this._pagesInterval = setInterval(this.__checkPages, this._const.MEDIA_INTERVAL, this);
        } // end if
    } // end if
    return (_loc3);
};
FFlippingBookCache.prototype.__checkPages = function (obj)
{
    var _loc3 = true;
    for (src in obj.__pagesLoading)
    {
        if (obj.__pagesLoading[src])
        {
            var _loc2 = obj.__pagesHolders[src].getBytesLoaded() / obj.__pagesHolders[src].getBytesTotal() * 100;
            if (obj.usePreloader)
            {
                obj.__pagesLoaders[src].setProgress(_loc2);
            } // end if
            obj.__pagesTimeouts[src] = obj.__pagesTimeouts[src] - obj._const.MEDIA_INTERVAL;
            obj.__pagesProcess[src] = _loc2;
            obj.__pagesHolders[src].progress = _loc2;
            if (_loc2 == 100 && obj.__pagesHolders[src].getBytesLoaded() > 4 && obj.__checkCompleted[src] == 1 && !isNaN(_loc2))
            {
                obj._baseObject._setPageParameters(obj.__pagesHolders[src], src, true);
                obj.__pagesBacks[src]._visible = false;
                obj._baseObject._setVisible();
                if (obj.cachePages)
                {
                    obj.__pagesLoaders[src]._visible = false;
                    obj.__pagesProcess[src] = 100;
                }
                else
                {
                    obj.__pagesLoaders[src]._visible = false;
                    obj.__pagesLoaders[src].setProgress(0);
                    obj.__checkCompleted[src] = undefined;
                } // end else if
                if (obj._baseObject.scaleContent)
                {
                    obj.__pagesHolders[src]._width = obj._pageWidth;
                    obj.__pagesHolders[src]._height = obj._pageHeight;
                }
                else
                {
                    obj.__pagesHolders[src].setMask(obj.__pagesMasks[src]);
                } // end else if
                obj.__pagesHolders[src]._parent._visible = true;
                obj.__pagesLoading[src] = false;
                if (obj._model == undefined)
                {
                    obj._model = obj._broker.objects[obj._const.MODEL_OBJ_ID];
                } // end if
                obj._baseObject.onPageLoad(obj._stripItem(src), obj.__pagesHolders[src].pageNumber);
            }
            else
            {
                _loc3 = false;
            } // end else if
            if (_loc2 == 100 && obj.__pagesHolders[src].getBytesLoaded() > 4)
            {
                obj.__checkCompleted[src] = 1;
            } // end if
        } // end if
    } // end of for...in
    if (_loc3)
    {
        clearInterval(obj._pagesInterval);
        obj._pagesInterval = undefined;
    } // end if
};
FFlippingBookCache.prototype.setPage = function (page, src, i, pageNum, dir)
{
    if (this._baseObject.loadOnDemand)
    {
        if (i == 1 || i == 3)
        {
            var _loc10 = this._baseObject.cacheSize;
            var _loc6 = new Array();
            var _loc5 = new Array();
            var _loc7 = this._baseObject._model._realPages.length;
            var _loc15 = 0;
            for (var _loc3 = pageNum - _loc10; _loc3 <= pageNum + _loc10; ++_loc3)
            {
                if (_loc3 >= 0 && _loc3 < _loc7)
                {
                    _loc6[_loc15++] = _loc3;
                } // end if
            } // end of for
            var _loc14 = _loc6[0];
            var _loc16 = _loc6[_loc15 - 1];
            _loc15 = 0;
            for (var _loc3 = 0; _loc3 < _loc7; ++_loc3)
            {
                var _loc2 = this._baseObject._model._realPages[_loc3];
                if ((_loc3 < _loc14 || _loc3 > _loc16) && this.__pagesExt[_loc2] && (this.__pagesLoading[_loc2] || this.__checkCompleted[_loc2] == 1))
                {
                    _loc5[_loc15++] = _loc3;
                } // end if
            } // end of for
            for (var _loc4 = 0; _loc4 < _loc6.length; ++_loc4)
            {
                _loc2 = this._baseObject._model._realPages[_loc6[_loc4]];
                if (this.__pagesExt[_loc2] && !this.__pagesLoading[_loc2] && this.__pagesProcess[_loc2] == 0)
                {
                    this.getPage(_loc2);
                    this.__pagesLoading[_loc2] = true;
                } // end if
            } // end of for
            for (var _loc4 = 0; _loc4 < _loc5.length; ++_loc4)
            {
                if (_loc5[_loc4] > 0 && _loc5[_loc4] < _loc7)
                {
                    _loc2 = this._baseObject._model._realPages[_loc5[_loc4]];
                    this.__pagesProcess[_loc2] = 0;
                    this.__pagesLoading[_loc2] = false;
                    this.__checkCompleted[_loc2] = 0;
                    var _loc8 = this.__pagesHolders[_loc2].pageNumber;
                    this.__pagesHolders[_loc2].loaded = false;
                    unloadMovie(this.__pagesHolders[_loc2]);
                    this._baseObject.onPageUnload(_loc8);
                } // end if
            } // end of for
        } // end if
    } // end if
    if (this._view == undefined)
    {
        this._view = this._broker.objects[this._const.VIEW_OBJ_ID];
    } // end if
    var _loc11 = this.getPage(src);
    var _loc17 = page;
    this.__pagesDepths[i] = _loc11.getDepth();
    _loc17.swapDepths(_loc11);
    _loc11._x = _loc17._x;
    _loc11._y = _loc17._y;
    _loc11._rotation = _loc17._rotation;
    _loc17._visible = false;
    if (i < 3)
    {
        _loc11._visible = true;
    } // end if
    if ((i == 1 || i == 2) && (src == this._const.TRANSPARENT_PAGE1 || src == this._const.TRANSPARENT_PAGE2))
    {
        this._view._transpPage = i;
    } // end if
    if (i == 4 && (src == this._const.TRANSPARENT_PAGE1 || src == this._const.TRANSPARENT_PAGE2))
    {
        this._view._transpPage04 = true;
    }
    else
    {
        this._view._transpPage04 = false;
    } // end else if
    switch (i)
    {
        case 1:
        {
            this._view.__page01 = _loc11;
            this.__pagesShadows1[src]._visible = true;
            this.__pagesShadows2[src]._visible = false;
            break;
        } 
        case 2:
        {
            this._view.__page02 = _loc11;
            this.__pagesShadows1[src]._visible = false;
            this.__pagesShadows2[src]._visible = true;
            break;
        } 
        case 3:
        {
            this._view.__page03 = _loc11;
            if (this._view.__ox > 0)
            {
                this.__pagesShadows1[src]._visible = true;
                this.__pagesShadows2[src]._visible = false;
            }
            else
            {
                this.__pagesShadows1[src]._visible = false;
                this.__pagesShadows2[src]._visible = true;
            } // end else if
            break;
        } 
        case 4:
        {
            this._view.__page04 = _loc11;
            if (this._view.__ox < 0)
            {
                this.__pagesShadows1[src]._visible = true;
                this.__pagesShadows2[src]._visible = false;
            }
            else
            {
                this.__pagesShadows1[src]._visible = false;
                this.__pagesShadows2[src]._visible = true;
            } // end else if
            break;
        } 
    } // End of switch
};
FFlippingBookCache.prototype.setSize = function (w, h)
{
    this._pageWidth = w / 2;
    this._pageHeight = h;
    for (link in this.__pagesHolders)
    {
        if (this._baseObject.scaleContent && this.__pagesProcess[link] == 100)
        {
            this.__pagesHolders[link]._width = w / 2;
            this.__pagesHolders[link]._height = h;
        } // end if
        if (this.__pagesHolders[link]._parent._parent._x < 0)
        {
            this.__pagesHolders[link]._parent._parent._x = -w / 2;
        } // end if
        this.__pagesHolders[link]._parent._parent._y = -h / 2;
    } // end of for...in
    for (id in this.__pagesShadows1)
    {
        this.__pagesShadows1[id]._width = w / 6;
        this.__pagesShadows1[id]._height = h;
    } // end of for...in
    for (id in this.__pagesShadows2)
    {
        this.__pagesShadows2[id]._width = w / 6;
        this.__pagesShadows2[id]._height = h;
    } // end of for...in
    for (id in this.__pagesBacks)
    {
        this.__pagesBacks[id]._width = w / 2;
        this.__pagesBacks[id]._height = h;
    } // end of for...in
    for (id in this.__pagesLoaders)
    {
        var _loc4 = this.__pagesLoaders[id];
        var _loc6 = w / 4;
        var _loc5 = h / 2;
        _loc4._x = _loc6;
        _loc4._y = _loc5;
    } // end of for...in
    for (mask in this.__pagesMasks)
    {
        this.__pagesMasks[mask]._width = w / 2;
        this.__pagesMasks[mask]._height = h;
    } // end of for...in
};
FFlippingBookCache.prototype.restoreDirectGotoPages = function ()
{
    this._view.__page01.setMask(null);
    this._view.__page02.setMask(null);
    this._view.__mask12.clear();
    this._view.__page01._visible = false;
    this._view.__page02._visible = false;
    this._view.__page01.swapDepths(this.__pagesDepths[1]);
    this._view.__page02.swapDepths(this.__pagesDepths[2]);
    this._view.__page01 = this._view.tmp01;
    this._view.__page02 = this._view.tmp02;
    this._view._transpPage = 0;
};
FFlippingBookCache.prototype.showUnderlyingPages = function (direction, _pageNumber)
{
    var _loc2 = this._baseObject;
    var _loc3 = _loc2.leftPageNumber;
    var _loc4 = _loc2.rightPageNumber;
    var _loc8 = _loc2.totalPages;
    var _loc7 = _loc2._view._bookState == _loc2._constants.GOTOPAGE_STATE;
    if (_loc7 && direction == undefined)
    {
        return;
    } // end if
    if (!this.misNaN(this.lv_n) && this.lv_n != _loc3 && !(_loc7 && this.lv_n == _loc3 - 2))
    {
        var _loc5 = _loc2.getPageLink(this.lv_n);
        if (_loc5._parent.media != undefined)
        {
            _loc5 = _loc5._parent;
        } // end if
        var _loc6 = _loc5._parent._parent;
        _loc6._visible = false;
    } // end if
    if (!this.misNaN(this.rv_n) && this.rv_n != _loc4 && !(_loc7 && this.rv_n == _loc4 + 2))
    {
        _loc5 = _loc2.getPageLink(this.rv_n);
        if (_loc5._parent.media != undefined)
        {
            _loc5 = _loc5._parent;
        } // end if
        _loc6 = _loc5._parent._parent;
        _loc6._visible = false;
    } // end if
    this.lv_n = this.rv_n = undefined;
    if (_loc3 != undefined && _loc3 - 2 >= 0)
    {
        this.lv_n = _loc3 - 2;
    } // end if
    if (_loc4 != undefined && _loc3 + 2 <= _loc8 - 1)
    {
        this.rv_n = _loc4 + 2;
    } // end if
    if (direction == "left")
    {
        this.lv_n = _pageNumber;
    }
    else if (direction == "right")
    {
        this.rv_n = _pageNumber;
    } // end else if
    if (!this.misNaN(this.lv_n))
    {
        _loc5 = _loc2.getPageLink(this.lv_n);
        if (_loc5._parent.media != undefined)
        {
            _loc5 = _loc5._parent;
        } // end if
        _loc6 = _loc5._parent._parent;
        _loc6._visible = true;
        _loc6._x = -this._pageWidth;
        _loc6.shadows.STATICSH2._visible = false;
    } // end if
    if (!this.misNaN(this.rv_n))
    {
        _loc5 = _loc2.getPageLink(this.rv_n);
        if (_loc5._parent.media != undefined)
        {
            _loc5 = _loc5._parent;
        } // end if
        _loc6 = _loc5._parent._parent;
        _loc6._visible = true;
        _loc6._x = 0;
        _loc6.shadows.STATICSH1._visible = false;
    } // end if
};
FFlippingBookCache.prototype.misNaN = function (val)
{
    if (isNaN(val) || val == undefined)
    {
        return (true);
    }
    else
    {
        return (false);
    } // end else if
};
FFlippingBookCache.prototype.restorePages = function ()
{
    this._view.__page01.setMask(null);
    this._view.__page02.setMask(null);
    this._view.__page03.setMask(null);
    this._view.__page04.setMask(null);
    this._view._drawShadow03();
    this._view.__mask03.clear();
    this._view.__mask12.clear();
    this._view.__page01._visible = false;
    this._view.__page02._visible = false;
    this._view.__page01.swapDepths(this.__pagesDepths[1]);
    this._view.__page02.swapDepths(this.__pagesDepths[2]);
    this._view.__page03.swapDepths(this.__pagesDepths[3]);
    this._view.__page04.swapDepths(this.__pagesDepths[4]);
    this._view.__page03._x = -this._view._pageWidth;
    this._view.__page03._y = -this._view._pageHeight / 2;
    this._view.__page03._rotation = 0;
    this._view.__page04._x = 0;
    this._view.__page04._y = -this._view._pageHeight / 2;
    this._view.__page04._rotation = 0;
    this._view.__page01 = this._view.tmp01;
    this._view.__page02 = this._view.tmp02;
    this._view.__page03 = this._view.tmp03;
    this._view.__page04 = this._view.tmp04;
    this._view._transpPage = 0;
};
FFlippingBookCache.prototype.restoreWorkPages = function ()
{
    this._view.__page01.setMask(null);
    this._view.__page02.setMask(null);
    this._view.__mask03.clear();
    this._view.__mask12.clear();
    this._view._drawShadow12();
    this._view._drawShadow03();
    this._view._drawShadow04();
    this._view.__page03._visible = false;
    this._view.__page04._visible = false;
    this._view.__page03.swapDepths(this.__pagesDepths[3]);
    this._view.__page04.swapDepths(this.__pagesDepths[4]);
    this._view.__page03._x = -this._view._pageWidth;
    this._view.__page03._y = -this._view._pageHeight / 2;
    this._view.__page03._rotation = 0;
    this._view.__page04._x = 0;
    this._view.__page04._y = -this._view._pageHeight / 2;
    this._view.__page04._rotation = 0;
    this._view.__page03 = this._view.tmp03;
    this._view.__page04 = this._view.tmp04;
    this.showUnderlyingPages();
};
FFlippingBookModel.prototype.getUserPageNumber = function (src)
{
    var _loc4 = this._userPages.length;
    for (var _loc2 = 0; _loc2 < _loc4; ++_loc2)
    {
        var _loc3 = this._userPages[_loc2];
        if (_loc3 == src)
        {
            return (_loc2);
        } // end if
    } // end of for
    if (src == this._const.EMPTY_PAGE)
    {
        return (_loc4);
    } // end if
};
FFlippingBookModel.prototype._markEqual = function ()
{
    var _loc10 = this._const.DELIMITER;
    var _loc7 = this._userPages.length;
    var _loc5 = new Array(_loc7);
    for (var _loc6 = 0; _loc6 < _loc7; ++_loc6)
    {
        _loc5[_loc6] = false;
    } // end of for
    for (var _loc4 = 0; _loc4 < _loc7; ++_loc4)
    {
        var _loc9 = this._userPages[_loc4];
        var _loc11 = _loc4;
        var _loc8 = 0;
        for (var _loc2 = 0; _loc2 < _loc7; ++_loc2)
        {
            var _loc3 = this._userPages[_loc2];
            if (_loc3 == _loc9 && !_loc5[_loc2])
            {
                this._userPages[_loc2] = _loc8++ + _loc10 + this._userPages[_loc2];
                _loc5[_loc2] = true;
            } // end if
        } // end of for
    } // end of for
};
FFlippingBookModel.prototype.getUserCurrentPage2 = function ()
{
    var _loc2 = this._userCurrentPage;
    if (this._view.__ox > 0)
    {
        _loc2 = _loc2 + 1;
    } // end if
    return (_loc2);
};
FFlippingBookModel.prototype.__addPage = function (index, pageSrc)
{
    this._realPages.splice(index, 0, pageSrc);
};
FFlippingBookModel.prototype._copyArray = function (src)
{
    var _loc3 = new Array();
    for (var _loc1 = 0; _loc1 < src.length; ++_loc1)
    {
        _loc3[_loc1] = src[_loc1];
    } // end of for
    return (_loc3);
};
FFlippingBookModel.prototype._makeItReal = function ()
{
    this._realPages = this._copyArray(this._userPages);
    var _loc2 = true;
    if (this._realPages.length % 2 == 0)
    {
        _loc2 = false;
    } // end if
    if (_loc2)
    {
        this.__addPage(this._realPages.length, this._const.EMPTY_PAGE);
    } // end if
    if (!this.alwaysOpened)
    {
        this.__addPage(0, this._const.TRANSPARENT_PAGE1);
        this.__addPage(this._realPages.length, this._const.TRANSPARENT_PAGE2);
    } // end if
};
FFlippingBookModel.prototype._realPageNumber = function (n)
{
    if (n < 0)
    {
        n = 0;
    }
    else if (n >= this._userPages.length)
    {
        n = this._userPages.length - 1;
        if (!this.alwaysOpened && this._userPages.length % 2 != 0)
        {
            ++n;
        } // end if
    } // end else if
    if (!this.alwaysOpened)
    {
        ++n;
    } // end if
    if (this._userPages.length == 0)
    {
        n = 0;
    } // end if
    if (n % 2 != 0)
    {
        --n;
    } // end if
    return (n);
};
FFlippingBookModel.prototype.putPage = function (isDirect, direct_dir)
{
    if (this._view == undefined)
    {
        this._view = this._broker.objects[this._const.VIEW_OBJ_ID];
    } // end if
    var _loc4 = this.__direction;
    this.__direction = -1;
    switch (_loc4)
    {
        case 0:
        {
            this._currentPage = this._currentPage - 2;
            this._userCurrentPage = this._userCurrentPage - 2;
            break;
        } 
        case 1:
        {
            this._currentPage = this._currentPage + 2;
            this._userCurrentPage = this._userCurrentPage + 2;
            break;
        } 
    } // End of switch
    this._cache.setPage(this._view.__page01, this._realPages[this._currentPage], 1, this._currentPage, _loc4);
    this._cache.setPage(this._view.__page02, this._realPages[this._currentPage + 1], 2, this._currentPage + 1, _loc4);
    this._curPageNumbers[0] = this.getUserPageNumber(this._realPages[this._currentPage]);
    this._curPageNumbers[1] = this.getUserPageNumber(this._realPages[this._currentPage + 1]);
    if (this._realPages[this._currentPage] == this._const.EMPTY_PAGE)
    {
        this._curPageNumbers[0] = this._userPages.length;
    } // end if
    vsrc = this._baseObj.pagesSet[this._userCurrentPage];
    if (this._view._bookState != this._const.FLIP_GOTOPAGE_STATE)
    {
        if (_loc4 == 1)
        {
            this._baseObj._setVisible();
            if (this._cache.__pagesExt[vsrc] == true)
            {
                this._baseObj.onPutPage(this._curPageNumbers[0], this._cache.__pagesHolders[this._userPages[this._curPageNumbers[0]]]);
            }
            else
            {
                this._baseObj.onPutPage(this._curPageNumbers[0], this._cache.__pagesHolders[this._userPages[this._curPageNumbers[0]]].media);
            } // end else if
        }
        else
        {
            var _loc3 = this._cache.__pagesHolders[this._userPages[this._curPageNumbers[1]]];
            if (isDirect && direct_dir == 1)
            {
                _loc3 = this._cache.__pagesHolders[this._userPages[this._curPageNumbers[0]]];
            } // end if
            if (this._cache.__pagesExt[vsrc] == false)
            {
                _loc3 = _loc3.media;
            } // end if
            var _loc2 = this._curPageNumbers[1];
            if (_loc2 == undefined)
            {
                _loc2 = this._curPageNumbers[0] + 1;
            } // end if
            if (isDirect && direct_dir == 1)
            {
                --_loc2;
            } // end if
            if (!(_loc2 % 2))
            {
                this._userCurrentPage = _loc2;
            }
            else if (this._baseObj.alwaysOpened)
            {
                this._userCurrentPage = _loc2 - 1;
            }
            else
            {
                this._userCurrentPage = _loc2 + 1;
            } // end else if
            this._baseObj._setVisible();
            this._baseObj.onPutPage(_loc2, _loc3);
        } // end if
    } // end else if
    this._view.onSetPages(1, 2);
    if (this._currentPage + 2 > this._realPages.length - 1)
    {
        this._baseObj.onLastPage();
    }
    else if (this._currentPage - 2 < 0)
    {
        this._baseObj.onFirstPage();
    } // end else if
    this._cache.showUnderlyingPages();
};
FFlippingBookModel.prototype.flipGotoForward = function (n)
{
    var _loc2 = n - this._currentPage;
    if (this._currentPage != this._realPages.length - 2 && this._currentPage >= 0)
    {
        this._cache.setPage(this._view.__page03, this._realPages[this._currentPage + _loc2], 3, this._currentPage + _loc2, 1);
        this._cache.setPage(this._view.__page04, this._realPages[this._currentPage + _loc2 + 1], 4, this._currentPage + _loc2 + 1, 1);
        this._curPageNumbers[2] = this.getUserPageNumber(this._realPages[this._currentPage + _loc2]);
        this._curPageNumbers[3] = this.getUserPageNumber(this._realPages[this._currentPage + _loc2 + 1]);
        this.__direction = 1;
        if (this._curPageNumbers[3] == undefined)
        {
            var _loc3;
        }
        else
        {
            _loc3 = this._curPageNumbers[3] + 2;
        } // end else if
        this._cache.showUnderlyingPages("right", _loc3);
    }
    else
    {
        this._view._bookState = this._const.UNACTIVE_STATE;
    } // end else if
};
FFlippingBookModel.prototype.goForward = function ()
{
    if (this._currentPage != this._realPages.length - 2 && this._currentPage >= 0)
    {
        this._cache.setPage(this._view.__page03, this._realPages[this._currentPage + 2], 3, this._currentPage + 2, 1);
        this._cache.setPage(this._view.__page04, this._realPages[this._currentPage + 3], 4, this._currentPage + 3, 1);
        this._curPageNumbers[2] = this.getUserPageNumber(this._realPages[this._currentPage + 2]);
        this._curPageNumbers[3] = this.getUserPageNumber(this._realPages[this._currentPage + 3]);
        this._cache.showUnderlyingPages("right", this._baseObj.rightPageNumber + 4);
        this.__direction = 1;
    }
    else
    {
        this._view._bookState = this._const.UNACTIVE_STATE;
    } // end else if
};
FFlippingBookModel.prototype.flipGotoBack = function (n)
{
    var _loc2 = this._currentPage - n - 1;
    if (this._currentPage > 0)
    {
        this._cache.setPage(this._view.__page03, this._realPages[this._currentPage - _loc2], 3, this._currentPage - _loc2, 0);
        this._cache.setPage(this._view.__page04, this._realPages[this._currentPage - _loc2 - 1], 4, this._currentPage - _loc2 - 1, 0);
        this._curPageNumbers[2] = this.getUserPageNumber(this._realPages[this._currentPage - _loc2]);
        this._curPageNumbers[3] = this.getUserPageNumber(this._realPages[this._currentPage - _loc2 - 1]);
        this.__direction = 0;
        if (this._curPageNumbers[3] == undefined)
        {
            var _loc3;
        }
        else
        {
            _loc3 = this._curPageNumbers[3] - 2;
        } // end else if
        this._cache.showUnderlyingPages("left", _loc3);
    }
    else
    {
        this._view._bookState = this._const.UNACTIVE_STATE;
    } // end else if
};
FFlippingBookModel.prototype.goBack = function ()
{
    if (this._currentPage > 0)
    {
        this._cache.setPage(this._view.__page03, this._realPages[this._currentPage - 1], 3, this._currentPage - 1, 0);
        this._cache.setPage(this._view.__page04, this._realPages[this._currentPage - 2], 4, this._currentPage - 2, 0);
        this._curPageNumbers[2] = this.getUserPageNumber(this._realPages[this._currentPage - 1]);
        this._curPageNumbers[3] = this.getUserPageNumber(this._realPages[this._currentPage - 2]);
        this._cache.showUnderlyingPages("left", this._baseObj.leftPageNumber - 4);
        this.__direction = 0;
    }
    else
    {
        this._view._bookState = this._const.UNACTIVE_STATE;
    } // end else if
};
FFlippingBookModel.prototype.getFlipGotoPage = function (n, state)
{
    if (state)
    {
        this._view._bookState = this._const.UNACTIVE_STATE;
        this._currentPage = this._last_current_page;
        this._view.directGotoPage(n);
        return;
    } // end if
    if (this._currentPage > n)
    {
        this.flipGotoBack(n);
    }
    else if (this._currentPage < n)
    {
        this.flipGotoForward(n);
    }
    else
    {
        this._view._bookState = this._const.UNACTIVE_STATE;
    } // end else if
};
FFlippingBookModel.prototype.getNextGotoPage = function (n)
{
    if (this._currentPage > n)
    {
        this.goBack();
    }
    else if (this._currentPage < n)
    {
        this.goForward();
    }
    else
    {
        this._baseObj.onEndGoto();
        this._view._bookState = this._const.UNACTIVE_STATE;
    } // end else if
};
FFlippingBookClass.prototype = new MovieClip();
FFlippingBookClass.prototype.getEnabledProp = function ()
{
    return (this.enabled);
};
FFlippingBookClass.prototype.setEnabledProp = function (v)
{
    this.enabled = v;
};
FFlippingBookClass.prototype.getTotalPages = function ()
{
    return (this.pagesSet.length);
};
FFlippingBookClass.prototype.getLeftPageNumber = function ()
{
    var _loc2 = 0;
    if (this.alwaysOpened)
    {
        _loc2 = this._model._userCurrentPage;
    }
    else
    {
        _loc2 = this._model._userCurrentPage - 1;
    } // end else if
    if (_loc2 < 0)
    {
        _loc2 = undefined;
    } // end if
    return (_loc2);
};
FFlippingBookClass.prototype.getRightPageNumber = function ()
{
    var _loc2 = 0;
    if (!this.alwaysOpened)
    {
        _loc2 = this._model._userCurrentPage;
    }
    else
    {
        _loc2 = this._model._userCurrentPage + 1;
    } // end else if
    if (_loc2 >= this.totalPages)
    {
        _loc2 = undefined;
    } // end if
    return (_loc2);
};
FFlippingBookClass.prototype.getAlwaysOpenedProp = function ()
{
    return (this.alwaysOpened);
};
FFlippingBookClass.prototype.getAutoFlipProp = function ()
{
    return (this.autoFlip);
};
FFlippingBookClass.prototype.setAutoFlipProp = function (v)
{
    this.autoFlip = v;
    if (this._view != undefined)
    {
        this._view._autoFlip = v;
    } // end if
};
FFlippingBookClass.prototype.getFlipOnClick = function ()
{
    return (this.flipOnClick);
};
FFlippingBookClass.prototype.setFlipOnClick = function (v)
{
    this.flipOnClick = v;
    if (this._view != undefined)
    {
        this._view._flipOnClick = v;
    } // end if
};
FFlippingBookClass.prototype.getMoveSpeedProp = function ()
{
    return (this.moveSpeed);
};
FFlippingBookClass.prototype.setMoveSpeedProp = function (v)
{
    this.moveSpeed = v;
    if (this._view != undefined)
    {
        this._view._pageSpeed = v / this._constants.SPEED_DIV;
    } // end if
};
FFlippingBookClass.prototype.getCloseSpeedProp = function ()
{
    return (this.closeSpeed);
};
FFlippingBookClass.prototype.setCloseSpeedProp = function (v)
{
    this.closeSpeed = v;
    if (this._view != undefined)
    {
        this._view._closeSpeed = v / this._constants.SPEED_DIV;
    } // end if
};
FFlippingBookClass.prototype.getGotoSpeedProp = function ()
{
    return (this.gotoSpeed);
};
FFlippingBookClass.prototype.setGotoSpeedProp = function (v)
{
    this.gotoSpeed = v;
    if (this._view != undefined)
    {
        this._view._gotoSpeed = v / this._constants.SPEED_DIV;
    } // end if
};
FFlippingBookClass.prototype.getWidth = function ()
{
    return (this._bookWidth);
};
FFlippingBookClass.prototype.setWidth = function (w)
{
    var _loc2 = this._bookHeight;
    this.setSize(w, _loc2);
};
FFlippingBookClass.prototype.getHeight = function ()
{
    return (this._bookHeight);
};
FFlippingBookClass.prototype.setHeight = function (h)
{
    var _loc2 = this._bookWidth;
    this.setSize(_loc2, h);
};
FFlippingBookClass.prototype.getPageLink = function (pageNumber)
{
    var _loc2 = this.pagesSet[pageNumber];
    if (this._cache.__pagesExt[_loc2])
    {
        return (this._cache.__pagesHolders[_loc2]);
    }
    else
    {
        return (this._cache.__pagesHolders[_loc2].media);
    } // end else if
};
FFlippingBookClass.prototype.isPageVisible = function (pageNumber)
{
    var _loc2 = this.getPageLink(pageNumber);
    return (_loc2.visible);
};
FFlippingBookClass.prototype.isPageLoaded = function (pageNumber)
{
    var _loc2 = this.getPageLink(pageNumber);
    return (_loc2.loaded);
};
FFlippingBookClass.prototype.getPageURL = function (pageNumber)
{
    var _loc2 = this.getPageLink(pageNumber);
    return (_loc2.URL);
};
FFlippingBookClass.prototype.getPageParams = function (pageNumber)
{
    var _loc2 = this.getPageLink(pageNumber);
    return (_loc2.params);
};
FFlippingBookClass.prototype.isLeftPage = function (pageNumber)
{
    var _loc2 = this.getPageLink(pageNumber);
    return (_loc2.isLeftPage);
};
FFlippingBookClass.prototype.isRightPage = function (pageNumber)
{
    var _loc2 = this.getPageLink(pageNumber);
    return (_loc2.isRightPage);
};
FFlippingBookClass.prototype.flipCorner = function (cornerPosition)
{
    if (this._view != undefined)
    {
        this._view.flipCorner(cornerPosition);
    } // end if
};
FFlippingBookClass.prototype.flipForward = function ()
{
    if (this._view != undefined)
    {
        var _loc2 = this._model._currentPage + 2;
        this._view.gotoPage(_loc2);
    } // end if
};
FFlippingBookClass.prototype.flipBack = function ()
{
    if (this._view != undefined)
    {
        var _loc2 = this._model._currentPage - 2;
        this._view.gotoPage(_loc2);
    } // end if
};
FFlippingBookClass.prototype.setSize = function (w, h)
{
    this._bookWidth = w;
    this._bookHeight = h;
    this._xscale = 100;
    this._yscale = 100;
    if (this._view != undefined && (this._view._bookState == this._constants.UNACTIVE_STATE || this._view._bookState == this._constants.INIT_STATE))
    {
        this._view.setSize(w, h);
    } // end if
    this._cache.setSize(w, h);
    var _loc3 = this._cache.__pagesHolders;
    for (var _loc4 in _loc3)
    {
        var _loc2 = _loc3[_loc4];
        if (_loc2.media != undefined)
        {
            _loc2 = _loc2.media;
        } // end if
        this._setPageParameters(_loc2, _loc4, _loc2.loaded);
    } // end of for...in
};
FFlippingBookClass.prototype._initLibraryPages = function ()
{
    if (this.__alreadyInitialized)
    {
        return;
    } // end if
    var _loc3 = this._cache.__pagesHolders;
    for (var _loc4 in _loc3)
    {
        var _loc2 = _loc3[_loc4].media;
        if (_loc2)
        {
            _loc2.onInit();
            _loc2.onPageLoad();
            this.onPageLoad(_loc2.URL, _loc2.pageNumber);
        } // end if
    } // end of for...in
    this.__alreadyInitialized = true;
};
FFlippingBookClass.prototype._setPageParameters = function (page_mc, src, isLoaded)
{
    page_mc.params = this.pageParameters[this.pageIndexes[src]];
    page_mc.isExternal = this._cache.__pagesExt[src];
    page_mc.book = this;
    page_mc.URL = this._cache._stripItem(src);
    page_mc.pageNumber = this.pageIndexes[src];
    if (!page_mc.loaded && isLoaded)
    {
        page_mc.onPageLoad();
    } // end if
    page_mc.loaded = isLoaded;
    if (page_mc.visible == undefined)
    {
        page_mc.visible = false;
    } // end if
    page_mc.width = this._bookWidth / 2;
    page_mc.height = this._bookHeight;
    var _loc3 = false;
    var _loc4 = page_mc.pageNumber;
    if (this.alwaysOpened && !(_loc4 % 2) || !this.alwaysOpened && _loc4 % 2)
    {
        _loc3 = true;
    } // end if
    page_mc.isLeftPage = _loc3;
    page_mc.isRightPage = !_loc3;
    if (page_mc.isExternal == false)
    {
        page_mc.__holder = page_mc._parent._parent._parent;
    }
    else
    {
        page_mc.__holder = page_mc._parent._parent;
    } // end else if
    page_mc.onInit();
};
FFlippingBookClass.prototype._setVisible = function ()
{
    var _loc4 = this.totalPages;
    for (var _loc3 = 0; _loc3 < _loc4; ++_loc3)
    {
        var _loc2 = this.getPageLink(_loc3);
        if (_loc2.visible && _loc2.pageNumber != this.leftPageNumber && _loc2.pageNumber != this.rightPageNumber)
        {
            _loc2.visible = false;
            _loc2.onClose();
        } // end if
    } // end of for
    var _loc5 = this.getPageLink(this.leftPageNumber);
    var _loc6 = this.getPageLink(this.rightPageNumber);
    if (!_loc5.visible)
    {
        _loc5.visible = true;
        if (_loc5.onOpen)
        {
            _loc5.onOpen();
            _loc5.onOpenCalled = true;
        } // end if
    } // end if
    if (!_loc6.visible)
    {
        _loc6.visible = true;
        if (_loc6.onOpen)
        {
            _loc6.onOpen();
            _loc6.onOpenCalled = true;
        } // end if
    } // end if
};
FFlippingBookClass.prototype._onXMLComplete = function ()
{
    this._initFromCachedXML();
    this._getMedia();
    this.onXMLComplete();
};
FFlippingBookClass.prototype._getMedia = function ()
{
    var _loc9 = this.pagesSet.length;
    for (var _loc5 = 0; _loc5 < _loc9; ++_loc5)
    {
        var _loc3 = this.pagesSet[_loc5];
        if (_loc3.indexOf("?") != -1)
        {
            this.pageParameters[_loc5] = new Object();
            var _loc2 = _loc3.substr(_loc3.indexOf("?") + 1, _loc3.length);
            var _loc8 = _loc3.slice(0, _loc3.indexOf("?"));
            this.pagesSet[_loc5] = _loc8;
            do
            {
                var _loc6 = _loc2.substr(0, _loc2.indexOf("="));
                var _loc4 = _loc2.indexOf("&") == -1 ? (_loc2.length) : (_loc2.indexOf("&"));
                var _loc7 = _loc2.slice(_loc2.indexOf("=") + 1, _loc4);
                this.pageParameters[_loc5][_loc6] = _loc7;
                if (_loc2.indexOf("&") == -1)
                {
                    _loc2 = "";
                } // end if
                _loc2 = _loc2.substr(_loc2.indexOf("&") + 1, _loc2.length);
            } while (_loc2.indexOf("=") != -1)
        } // end if
    } // end of for
    this._model = new FFlippingBookModel(this.pagesSet, this.firstPage, this.alwaysOpened, this._broker);
    for (var _loc5 = 0; _loc5 < _loc9; ++_loc5)
    {
        this.pageIndexes[this.pagesSet[_loc5]] = _loc5;
    } // end of for
    this._cache.loadMedia(this._model._realPages, this.flipSound, this.pageBack, this._bookWidth, this._bookHeight);
};
FFlippingBookClass.prototype._onMediaComplete = function ()
{
    if (this._model._userPages.length > 0)
    {
        this._view = new FFlippingBookView(this._bookWidth, this._bookHeight, this.autoFlip, this.flipOnClick, this._broker);
    } // end if
    this.onInit();
};
FFlippingBookClass.prototype._initFromCachedXML = function ()
{
    var _loc8 = this._cache.extXML;
    var _loc9 = _loc8.firstChild;
    var _loc3 = _loc9.childNodes;
    for (var _loc2 = 0; _loc3[_loc2]; ++_loc2)
    {
        var _loc7 = _loc3[_loc2].nodeName.toUpperCase();
        switch (_loc7)
        {
            case this._constants.WIDTH_NODE_NAME:
            {
                this._bookWidth = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.HEIGHT_NODE_NAME:
            {
                this._bookHeight = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.FIRST_PAGE_NODE_NAME:
            {
                this.firstPage = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.ALWAYS_OPENED_NODE_NAME:
            {
                this.alwaysOpened = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.AUTOFLIP_NODE_NAME:
            {
                this.autoFlip = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.FLIP_ON_CLICK_NODE_NAME:
            {
                this.flipOnClick = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.SCALE_CONTENT_NODE_NAME:
            {
                this.scaleContent = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.MOVE_SPEED_NODE_NAME:
            {
                this.moveSpeed = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.CLOSE_SPEED_NODE_NAME:
            {
                this.closeSpeed = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.GOTO_SPEED_NODE_NAME:
            {
                this.gotoSpeed = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.FLIP_SOUND_NODE_NAME:
            {
                this.flipSound = this._removeWhite(_loc3[_loc2].firstChild.nodeValue);
                break;
            } 
            case this._constants.PAGE_BACK_NODE_NAME:
            {
                this.pageBack = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.LOAD_ON_DEMAND_NODE_NAME:
            {
                this.loadOnDemand = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.CACHE_PAGES_NODE_NAME:
            {
                this.cachePages = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.USE_PRELOADER_NODE_NAME:
            {
                this.usePreloader = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.STATIC_SHADOWS_DEPTH_NODE_NAME:
            {
                this.staticShadowsDepth = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.DYNAMIC_SHADOWS_DEPTH_NODE_NAME:
            {
                this.shadowsDepth = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.PRELOADER_TYPE_NODE_NAME:
            {
                this.preloaderType = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.CACHE_SIZE_NODE_NAME:
            {
                this.cacheSize = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.USER_PRELOADER_NODE_NAME:
            {
                this.userPreloaderId = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.PAGES_NODE_NAME:
            {
                var _loc4 = 0;
                var _loc5 = _loc3[_loc2].childNodes;
                this.pagesSet = new Array();
                while (_loc5[_loc4])
                {
                    var _loc6 = this._removeWhite(_loc5[_loc4].firstChild.nodeValue);
                    this.pagesSet.push(_loc6);
                    ++_loc4;
                } // end while
                break;
            } 
        } // End of switch
    } // end of for
    this._validateParameters();
};
FFlippingBookClass.prototype._removeWhite = function (str)
{
    for (var _loc1 = str; _loc1.charAt(0) == " "; _loc1 = _loc1.substr(1, _loc1.length))
    {
    } // end of for
    while (_loc1.charAt(_loc1.length - 1) == " ")
    {
        _loc1 = _loc1.substr(0, _loc1.length - 1);
    } // end while
    return (_loc1);
};
FFlippingBookClass.prototype._validateNumber = function (param, min, max, def)
{
    if (typeof(param) != this._constants.NUM_TYPE_NAME)
    {
        param = this._removeWhite(param);
        if (!isNaN(Number(param)))
        {
            param = Number(param);
        }
        else
        {
            param = def;
        } // end if
    } // end else if
    if (param > max)
    {
        param = max;
    } // end if
    if (param < min)
    {
        param = min;
    } // end if
    return (param);
};
FFlippingBookClass.prototype._validateBoolean = function (param, def)
{
    if (typeof(param) != this._constants.BOOL_TYPE_NAME)
    {
        param = param.toUpperCase();
        if (param.indexOf(this._constants.BOOL_TRUE_VAL) != -1)
        {
            param = true;
        }
        else if (param.indexOf(this._constants.BOOL_FALSE_VAL) != -1)
        {
            param = false;
        }
        else
        {
            param = def;
        } // end else if
    } // end else if
    return (param);
};
FFlippingBookClass.prototype._validateColor = function (param)
{
    param = this._removeWhite(param);
    if (param < 0 || param > 16777215)
    {
        param = this._constants.DEF_PAGEBACK;
    } // end if
    return (param);
};
FFlippingBookClass.prototype._validateParameters = function ()
{
    this._bookWidth = this._validateNumber(this._bookWidth, 0, Infinity, this._constants.DEF_WIDTH);
    this._bookHeight = this._validateNumber(this._bookHeight, 0, Infinity, this._constants.DEF_HEIGHT);
    this.firstPage = this._validateNumber(this.firstPage, 0, Infinity, this._constants.DEF_FIRST_PAGE);
    this.moveSpeed = this._validateNumber(this.moveSpeed, 0, Infinity, this._constants.DEF_MOVE_SPEED);
    this.closeSpeed = this._validateNumber(this.closeSpeed, 0, Infinity, this._constants.DEF_CLOSE_SPEED);
    this.gotoSpeed = this._validateNumber(this.gotoSpeed, 0, Infinity, this._constants.DEF_GOTO_SPEED);
    this.autoFlip = this._validateNumber(this.autoFlip, 0, Infinity, this._constants.DEF_AUTOFLIP);
    this._cache.sd = this.shadowsDepth = this._validateNumber(this.shadowsDepth, 0, Infinity, this._constants.DEF_SHADOWS_DEPTH);
    this._cache.ssd = this.staticShadowsDepth = this._validateNumber(this.staticShadowsDepth, 0, Infinity, this._constants.DEF_SHADOWS_DEPTH);
    this.pageBack = this._validateColor(this.pageBack);
    this.alwaysOpened = this._validateBoolean(this.alwaysOpened, this._constants.DEF_ALWAYS_OPENED);
    this.flipOnClick = this._validateBoolean(this.flipOnClick, this._constants.DEF_FLIP_ON_CLICK);
    this.loadOnDemand = this._validateBoolean(this.loadOnDemand, this._constants.DEF_LOAD_ON_DEMAND);
    this.cachePages = this._validateBoolean(this.cachePages, this._constants.DEF_CACHE_PAGES);
    this.usePreloader = this._validateBoolean(this.usePreloader, this._constants.DEF_USE_PRELOADER);
    this.scaleContent = this._validateBoolean(this.scaleContent, this._constants.DEF_SCALE_CONTENT);
    this.preloaderType = this._removeWhite(this.preloaderType);
    if (this.preloaderType == "")
    {
        this.preloaderType = this._constants.DEF_PRELOADER_TYPE;
    } // end if
    this.userPreloaderId = this._removeWhite(this.userPreloaderId);
    this.cacheSize = this._validateNumber(this.cacheSize, 4, 100, this._constants.DEF_CACHE_SIZE);
    this._cache.usePreloader = this.usePreloader;
    this._cache.cachePages = this.cachePages;
    this._cache.loadOnDemand = this.loadOnDemand;
    this._cache.bgColor = this.pageBack;
};
FFlippingBookClass.prototype.gotoPage = function (i)
{
    if (this._view != undefined)
    {
        this._view.gotoPage(i);
    } // end if
};
FFlippingBookClass.prototype.directGotoPage = function (i)
{
    var _loc3 = i != this.leftPageNumber && i != this.rightPageNumber;
    if (this._view != undefined && _loc3)
    {
        this._view.directGotoPage(i);
    } // end if
};
FFlippingBookClass.prototype.flipGotoPage = function (i)
{
    if (this._view != undefined)
    {
        this._view.flipGotoPage(i);
    } // end if
};
FFlippingBookView.prototype.setSize = function (w, h)
{
    this._pageWidth = w / 2;
    this._pageHeight = h;
    this.tmp01._x = this.__page01._x = -this._pageWidth;
    this.tmp01._y = this.__page01._y = -this._pageHeight / 2;
    this.tmp02._x = this.__page02._x = 0;
    this.tmp02._y = this.__page02._y = -this._pageHeight / 2;
    this.tmp03._y = this.__page03._y = -this._pageHeight / 2;
    this.tmp04._y = this.__page04._y = -this._pageHeight / 2;
    this.__pagesShadowMask._x = -this._pageWidth;
    this.__pagesShadowMask._y = -this._pageHeight / 2;
    this.__mask03._y = -this._pageHeight / 2;
    this.__mask12._y = -this._pageHeight / 2;
    this.__shMask03._y = -this._pageHeight / 2;
    this.__shMask04._y = -this._pageHeight / 2;
    this._drawShadow12();
    this._drawShadow03();
    this._drawShadow04();
};
FFlippingBookView.prototype._drawBook = function ()
{
    this.__page04 = this.tmp04 = this._baseObj.createEmptyMovieClip(this._const.PAGE_04_MC_NAME, this._depth++);
    this.__shadow04 = this._baseObj.createEmptyMovieClip(this._const.SHADOW_04_MC_NAME, this._depth++);
    this.__shMask04 = this._baseObj.createEmptyMovieClip(this._const.SH_MASK_04_MC_NAME, this._depth++);
    this.__page01 = this.tmp01 = this._baseObj.createEmptyMovieClip(this._const.PAGE_01_MC_NAME, this._depth++);
    this.__page02 = this.tmp02 = this._baseObj.createEmptyMovieClip(this._const.PAGE_02_MC_NAME, this._depth++);
    this.__staticShadow = this._baseObj.createEmptyMovieClip(this._const.STATIC_SHADOW_MC_NAME, this._depth++);
    this.__pagesShadow = this._baseObj.createEmptyMovieClip(this._const.PAGES_SH_MC_NAME, this._depth++);
    this.__pagesShadowMask = this._baseObj.createEmptyMovieClip(this._const.PAGES_SHM_MC_NAME, this._depth++);
    this.__mask12 = this._baseObj.createEmptyMovieClip(this._const.MASK_12_MC_NAME, this._depth++);
    this.__page03 = this.tmp03 = this._baseObj.createEmptyMovieClip(this._const.PAGE_03_MC_NAME, this._depth++);
    this.__mask03 = this._baseObj.createEmptyMovieClip(this._const.MASK_03_MC_NAME, this._depth++);
    this.__page03.setMask(this.__mask03);
    this.__shadow03 = this._baseObj.createEmptyMovieClip(this._const.SHADOW_03_MC_NAME, this._depth++);
    this.__shMask03 = this._baseObj.createEmptyMovieClip(this._const.SH_MASK_03_MC_NAME, this._depth++);
    this.__page01._x = -this._pageWidth;
    this.__page01._y = -this._pageHeight / 2;
    this.__page02._x = 0;
    this.__page02._y = -this._pageHeight / 2;
    this.__page03._y = -this._pageHeight / 2;
    this.__page04._y = -this._pageHeight / 2;
    this.__pagesShadowMask._x = -this._pageWidth;
    this.__pagesShadowMask._y = -this._pageHeight / 2;
    this.__mask03._y = -this._pageHeight / 2;
    this.__mask12._y = -this._pageHeight / 2;
    this.__shMask03._y = -this._pageHeight / 2;
    this.__shMask04._y = -this._pageHeight / 2;
    this._drawShadow12();
    this._drawShadow03();
    this._drawShadow04();
};
FFlippingBookView.prototype.__redrawBook = function ()
{
    this.__drawShadow03();
    this.__mask03._x = 0;
    this.__drawShadow04();
    this.__mask12._x = 0;
    this._drawShadow12();
};
FFlippingBookView.prototype._drawShadow12 = function ()
{
    this.__pagesShadow.clear();
    this.__pagesShadow._x = 0;
    this.__pagesShadow._y = 0;
    var sw = this._const.SH12_SCALE * this._pageWidth;
    var sh = this.__pagesShadowHeight;
    var colors = [0, 0];
    var ratios = [0, 255];
    var alphas = [0, 25 * this.sd];
    var matrix = {matrixType: "box", x: -sw, y: -sh / 2, w: sw, h: sh, r: 0};
    with (this.__pagesShadow)
    {
        moveTo(-sw, -sh / 2);
        beginGradientFill("linear", colors, alphas, ratios, matrix);
        lineTo(0, -sh / 2);
        lineTo(0, sh / 2);
        lineTo(-sw, sh / 2);
        lineTo(-sw, -sh / 2);
        endFill();
    } // End of with
    this.__pagesShadow._visible = false;
};
FFlippingBookView.prototype.__drawShadow12Mask = function ()
{
    this.__pagesShadowMask.clear();
    var ax = 0;
    var ay = this._pageHeight;
    var bx = 0;
    var by = 0;
    var cx = 2 * this._pageWidth;
    var cy = 0;
    var dx = 2 * this._pageWidth;
    var dy = this._pageHeight;
    if (this._transpPage == 1)
    {
        ax = ax + this._pageWidth;
        bx = bx + this._pageWidth;
    }
    else if (this._transpPage == 2)
    {
        cx = cx - this._pageWidth;
        dx = dx - this._pageWidth;
    } // end else if
    with (this.__pagesShadowMask)
    {
        moveTo(ax, ay);
        beginFill(0, 100);
        lineTo(bx, by);
        lineTo(cx, cy);
        lineTo(dx, dy);
        lineTo(ax, ay);
        endFill();
    } // End of with
    this.__pagesShadow.setMask(this.__pagesShadowMask);
};
FFlippingBookView.prototype._drawShadow03 = function ()
{
    this.__shadow03._x = 0;
    this.__shadow03._y = 0;
    this.__shadow03.clear();
    var sw = this._const.SH3_SCALE * this._pageWidth;
    var sh = this.__shadowHeight;
    var colors = [0, 0, 0, 0];
    var ratios = [0, 200, 242, 255];
    var alphas = [0, 10 * this.sd, 20 * this.sd, 0];
    var matrix = {matrixType: "box", x: -sw, y: -sh / 2, w: sw, h: sh, r: 0};
    with (this.__shadow03)
    {
        moveTo(-sw, -sh / 2);
        beginGradientFill("linear", colors, alphas, ratios, matrix);
        lineTo(0, -sh / 2);
        lineTo(0, sh / 2);
        lineTo(-sw, sh / 2);
        lineTo(-sw, -sh / 2);
        endFill();
    } // End of with
    this.__shadow03._visible = false;
};
FFlippingBookView.prototype._drawShadow04 = function ()
{
    this.__shadow04._x = 0;
    this.__shadow04._y = 0;
    this.__shadow04.clear();
    var sw = 6.000000E-001 * this._pageWidth;
    var sh = this.__shadowHeight;
    var colors = [0, 0];
    var ratios = [0, 255];
    var alphas = [0, 35 * this.sd];
    var matrix = {matrixType: "box", x: -sw, y: -sh / 2, w: sw, h: sh, r: 0};
    with (this.__shadow04)
    {
        moveTo(-sw, -sh / 2);
        beginGradientFill("linear", colors, alphas, ratios, matrix);
        lineTo(0, -sh / 2);
        lineTo(0, sh / 2);
        lineTo(-sw, sh / 2);
        lineTo(-sw, -sh / 2);
        endFill();
    } // End of with
    this.__shadow04._visible = false;
};
FFlippingBookView.prototype.__isCorrectCorner = function (x, y)
{
    var _loc3 = this.__isCorner(Math.abs(x), Math.abs(y));
    var _loc2 = this.__oy * y > 0 && this.__ox * x > 0;
    return (_loc3 && _loc2);
};
FFlippingBookView.prototype.__isCorner = function (x, y)
{
    if (x > this._pageWidth - this._autoFlip)
    {
        if (x < this._pageWidth)
        {
            if (y > this._pageHeight / 2 - this._autoFlip)
            {
                if (y < this._pageHeight / 2)
                {
                    return (true);
                } // end if
            } // end if
        } // end if
    } // end if
    return (false);
};
FFlippingBookView.prototype.__onMouseUp = function ()
{
    if (!this._visible || !this.enabled)
    {
        return;
    } // end if
    var _loc2 = this._view;
    if (_loc2._bookState == this._constants.FLIPPING_STATE)
    {
        var _loc4 = _loc2.__isCorner(Math.abs(_loc2._baseObj._xmouse), Math.abs(_loc2._baseObj._ymouse));
        if (_loc2._flipOnClick || !_flipOnClick && !_loc4)
        {
            _loc2._flipSound.start(0, 1);
        } // end if
        var _loc5 = this._xmouse;
        var _loc6 = this._ymouse;
        var _loc3 = _loc2.__ox;
        if (_loc4)
        {
            _loc2._bookState = this._constants.FLIPOVER_STATE;
            _loc2._flipSound.start(0, 1);
        }
        else
        {
            _loc2._bookState = this._constants.FLIPBACK_STATE;
        } // end else if
        if (_loc3 < 0 && _loc5 > 0 || _loc3 > 0 && _loc5 < 0)
        {
            _loc2._bookState = this._constants.FLIPOVER_STATE;
        } // end if
    } // end if
};
FFlippingBookView.prototype.__onMouseDown = function ()
{
    if (!this._visible || !this.enabled)
    {
        return;
    } // end if
    var _loc2 = this._view;
    var _loc3 = this._xmouse;
    var _loc4 = this._ymouse;
    if (_loc3 > -_loc2._pageWidth && _loc4 > -_loc2._pageHeight / 2 && _loc3 < _loc2._pageWidth && _loc4 < _loc2._pageHeight / 2)
    {
        var _loc5 = false;
        if (_loc2._bookState == this._constants.AUTOFLIP_STATE)
        {
            _loc5 = true;
        } // end if
        if (_loc3 < 0)
        {
            var _loc10 = _loc2._baseObj.pagesSet[_loc2._model._userCurrentPage];
            var _loc7 = _loc2._model._curPageNumbers[0];
            var _loc6 = _loc2._cache.__pagesHolders[_loc2._model._userPages[_loc2._model._curPageNumbers[0]]];
            if (_loc6.media != undefined)
            {
                _loc6 = _loc6.media;
            } // end if
            if (_loc7 != undefined)
            {
                _loc2._baseObj.onClick(_loc7, _loc6, _loc5);
            } // end if
        }
        else if (_loc3 > 0)
        {
            _loc10 = _loc2._baseObj.pagesSet[_loc2._model._userCurrentPage];
            _loc7 = _loc2._model._curPageNumbers[1];
            _loc6 = _loc2._cache.__pagesHolders[_loc2._model._userPages[_loc2._model._curPageNumbers[1]]];
            if (_loc6.media != undefined)
            {
                _loc6 = _loc6.media;
            } // end if
            if (_loc7 != undefined)
            {
                _loc2._baseObj.onClick(_loc7, _loc6, _loc5);
            } // end if
        } // end if
    } // end else if
    if (!_loc2._flipOnClick && _loc2._bookState != this._constants.AUTOFLIP_STATE)
    {
        return;
    } // end if
    if (_loc5)
    {
        if (_loc2._flipOnClick)
        {
            _loc2._bookState = this._constants.FLIPPING_STATE;
        }
        else
        {
            _loc2._bookState = this._constants.FLIPPING_STATE;
        } // end if
    } // end else if
    if (_loc3 != 0 && _loc3 > -_loc2._pageWidth && _loc4 > -_loc2._pageHeight / 2 && _loc3 < _loc2._pageWidth && _loc4 < _loc2._pageHeight / 2)
    {
        if (_loc2._bookState == this._constants.UNACTIVE_STATE)
        {
            _loc2._bookState = this._constants.FLIPPING_STATE;
            var _loc8 = Math.sqrt(_loc3 * _loc3 + _loc4 * _loc4);
            var _loc9 = Math.asin(_loc4 / _loc8);
            _loc4 = Math.tan(_loc9) * _loc2._pageWidth;
            if (_loc4 > _loc2._pageHeight / 2)
            {
                _loc4 = _loc2._pageHeight / 2;
            } // end if
            if (_loc4 < -_loc2._pageHeight / 2)
            {
                _loc4 = -_loc2._pageHeight / 2;
            } // end if
            _loc2.__oy = _loc4;
            if (_loc3 < 0)
            {
                _loc2.__page04._x = -_loc2._pageWidth;
                _loc2.__ox = -_loc2._pageWidth;
                _loc2._model.goBack();
                _loc2.onStartFlip(_loc2._model._curPageNumbers[0], true);
            } // end if
            if (_loc3 > 0)
            {
                _loc2.__page04._x = 0;
                _loc2.__ox = _loc2._pageWidth;
                _loc2._model.goForward();
                _loc2.onStartFlip(_loc2._model._curPageNumbers[1], false);
            } // end if
            if (_loc2._bookState != this._constants.UNACTIVE_STATE)
            {
                _loc2.__shadow03._visible = true;
                _loc2.__shadow04._visible = true;
                _loc2.__shadow03.setMask(_loc2.__shMask03);
                _loc2.__shadow04.setMask(_loc2.__shMask04);
                _loc2.__drawShadow12Mask();
            } // end if
            _loc2.__oldX = _loc2.__ox;
            _loc2.__oldY = _loc2.__oy;
        } // end if
    } // end if
};
FFlippingBookView.prototype.onStartFlip = function (p, isLeft)
{
    if (!this._baseObj.alwaysOpened)
    {
        if (isLeft && this._baseObj.leftPageNumber == undefined)
        {
            return;
        }
        else if (!isLeft && this._baseObj.rightPageNumber == undefined)
        {
            return;
        } // end else if
    }
    else
    {
        if (isLeft && this._baseObj.leftPageNumber == 0)
        {
            return;
        } // end if
        if (!isLeft && this._baseObj.rightPageNumber == this._baseObj.totalPages - 1)
        {
            return;
        } // end if
    } // end else if
    var _loc3 = this._baseObj.getPageLink(p);
    _loc3.onStartFlip();
    this._baseObj.onStartFlip(p);
};
FFlippingBookView.prototype.onSetPages = function (i, j)
{
    if (this._bookState == this._const.INIT_STATE)
    {
        this._bookState = this._const.UNACTIVE_STATE;
    }
    else if (this._bookState == this._const.UNACTIVE_STATE)
    {
        this.__redrawBook();
    }
    else if ((this._bookState == this._const.GOTOPAGE_STATE || this._bookState == this._const.FLIP_GOTOPAGE_STATE) && i == 1)
    {
        this.__redrawBook();
        this.__oldX = 0;
        this.__oldY = 0;
        if (this._bookState == this._const.GOTOPAGE_STATE)
        {
            this._model.getNextGotoPage(this.__gotoPageIndex);
        }
        else
        {
            this._model.getFlipGotoPage(this.__gotoPageIndex, true);
        } // end else if
        if (this._bookState != this._const.UNACTIVE_STATE)
        {
            this._flipSound.start(0, 1);
            this.__pagesShadow._visible = true;
            this.__shadow03._visible = true;
            this.__shadow04._visible = true;
            this.__shadow03.setMask(this.__shMask03);
            this.__shadow04.setMask(this.__shMask04);
            this.__drawShadow12Mask();
        } // end else if
    } // end else if
};
FFlippingBookView.prototype.__onEnterFrame = function ()
{
    var _loc2 = this._view;
    var _loc5 = _loc2._baseObj;
    _loc5._initLibraryPages();
    var _loc6 = _loc5.getPageLink(_loc5.leftPageNumber);
    var _loc8 = _loc5.getPageLink(_loc5.rightPageNumber);
    if (!_loc6.isExternal && !_loc6.onOpenCalled)
    {
        _loc6.onOpen();
        _loc6.onOpenCalled = true;
    } // end if
    if (!_loc8.isExternal && !_loc8.onOpenCalled)
    {
        _loc8.onOpen();
        _loc8.onOpenCalled = true;
    } // end if
    if (!this._visible || !this.enabled)
    {
        return;
    } // end if
    var _loc3 = this._xmouse;
    var _loc4 = this._ymouse;
    if (_loc2._bookState == _loc2._const.START_FLIP_CORNER_STATE)
    {
        var _loc7 = _loc2._getFlipCornerCoords();
        _loc3 = _loc7.x;
        _loc4 = _loc7.y;
        _loc2._bookState = _loc2._const.FLIP_CORNER_STATE;
        var _loc11 = Math.sqrt(_loc3 * _loc3 + _loc4 * _loc4);
        var _loc12 = Math.asin(_loc4 / _loc11);
        _loc4 = Math.tan(_loc12) * _loc2._pageWidth;
        if (_loc4 > 0)
        {
            _loc4 = _loc2._pageHeight / 2;
        } // end if
        if (_loc4 < 0)
        {
            _loc4 = -_loc2._pageHeight / 2;
        } // end if
        _loc2.__oy = _loc4;
        _loc4 = -100;
        if (_loc3 < 0)
        {
            _loc2.__page04._x = -_loc2._pageWidth;
            _loc2.__ox = -_loc2._pageWidth;
            _loc2._model.goBack();
        } // end if
        if (_loc3 > 0)
        {
            _loc2.__page04._x = 0;
            _loc2.__ox = _loc2._pageWidth;
            _loc2._model.goForward();
        } // end if
        if (_loc2._bookState != this._constants.UNACTIVE_STATE)
        {
            _loc2.__pagesShadow._visible = true;
            _loc2.__shadow03._visible = true;
            _loc2.__shadow04._visible = true;
            _loc2.__shadow03.setMask(_loc2.__shMask03);
            _loc2.__shadow04.setMask(_loc2.__shMask04);
            _loc2.__drawShadow12Mask();
        } // end if
        _loc2.__oldX = _loc2.__ox;
        _loc2.__oldY = _loc2.__oy;
    }
    else if (_loc2._bookState == _loc2._const.AUTOFLIP_STATE)
    {
        if (!_loc2.__isCorrectCorner(_loc3, _loc4))
        {
            _loc2._bookState = _loc2._const.FLIPBACK_STATE;
        } // end if
    }
    else if (_loc2._bookState == _loc2._const.UNACTIVE_STATE && _loc2._autoFlip != 0)
    {
        if (_loc2.__isCorner(Math.abs(_loc3), Math.abs(_loc4)))
        {
            _loc2._bookState = _loc2._const.AUTOFLIP_STATE;
            _loc11 = Math.sqrt(_loc3 * _loc3 + _loc4 * _loc4);
            _loc12 = Math.asin(_loc4 / _loc11);
            _loc4 = Math.tan(_loc12) * _loc2._pageWidth;
            if (_loc4 > 0)
            {
                _loc4 = _loc2._pageHeight / 2;
            } // end if
            if (_loc4 < 0)
            {
                _loc4 = -_loc2._pageHeight / 2;
            } // end if
            _loc2.__oy = _loc4;
            _loc4 = this._ymouse;
            if (_loc3 < 0)
            {
                _loc2.__page04._x = -_loc2._pageWidth;
                _loc2.__ox = -_loc2._pageWidth;
                _loc2._model.goBack();
                _loc2.onStartFlip(_loc2._model._curPageNumbers[0], true);
            } // end if
            if (_loc3 > 0)
            {
                _loc2.__page04._x = 0;
                _loc2.__ox = _loc2._pageWidth;
                _loc2._model.goForward();
                _loc2.onStartFlip(_loc2._model._curPageNumbers[1], false);
            } // end if
            if (_loc2._bookState != this._constants.UNACTIVE_STATE)
            {
                _loc2.__pagesShadow._visible = true;
                _loc2.__shadow03._visible = true;
                _loc2.__shadow04._visible = true;
                _loc2.__shadow03.setMask(_loc2.__shMask03);
                _loc2.__shadow04.setMask(_loc2.__shMask04);
                _loc2.__drawShadow12Mask();
            } // end if
            _loc2.__oldX = _loc2.__ox;
            _loc2.__oldY = _loc2.__oy;
        } // end else if
    } // end else if
    if (_loc2._bookState == _loc2._const.FLIP_CORNER_STATE)
    {
        _loc7 = _loc2._getFlipCornerCoords();
        _loc3 = _loc7.x;
        _loc4 = _loc7.y;
        _loc3 = _loc2.__oldX = _loc2.__oldX + (_loc3 - _loc2.__oldX) * _loc2._pageSpeed;
        _loc4 = _loc2.__oldY = _loc2.__oldY + (_loc4 - _loc2.__oldY) * _loc2._pageSpeed;
        _loc2.__movePage(_loc3, _loc4);
        if (Math.abs(_loc3 - _loc7.x) < 1 && Math.abs(_loc4 - _loc7.y))
        {
            _loc2._bookState = _loc2._const.AUTOFLIP_STATE;
        } // end if
    }
    else if (_loc2._bookState == _loc2._const.FLIPPING_STATE || _loc2._bookState == _loc2._const.AUTOFLIP_STATE)
    {
        _loc3 = _loc2.__oldX = _loc2.__oldX + (_loc3 - _loc2.__oldX) * _loc2._pageSpeed;
        _loc4 = _loc2.__oldY = _loc2.__oldY + (_loc4 - _loc2.__oldY) * _loc2._pageSpeed;
        _loc2.__movePage(_loc3, _loc4);
    }
    else if (_loc2._bookState == _loc2._const.FLIPOVER_STATE)
    {
        _loc3 = _loc2.__oldX = _loc2.__oldX + (-_loc2.__ox - _loc2.__oldX) * _loc2._closeSpeed;
        _loc4 = _loc2.__oldY = _loc2.__oldY + (_loc2.__oy - _loc2.__oldY) * _loc2._closeSpeed;
        _loc2.__movePage(_loc3, _loc4);
        if (_loc3 / -_loc2.__ox > _loc2._minOffset)
        {
            _loc2._bookState = _loc2._const.UNACTIVE_STATE;
            _loc2._cache.restorePages();
            _loc2._model.putPage();
        } // end if
    }
    else if (_loc2._bookState == _loc2._const.FLIPBACK_STATE)
    {
        _loc3 = _loc2.__oldX = _loc2.__oldX + (_loc2.__ox - _loc2.__oldX) * _loc2._closeSpeed;
        _loc4 = _loc2.__oldY = _loc2.__oldY + (_loc2.__oy - _loc2.__oldY) * _loc2._closeSpeed;
        _loc2.__movePage(_loc3, _loc4);
        if (_loc3 / _loc2.__ox > _loc2._minOffset)
        {
            if (_loc3 > 0)
            {
                var _loc9 = _loc2._model._curPageNumbers[1];
                var _loc10 = _loc5.getPageLink(_loc9);
                _loc10.onFlipBack();
                _loc5.onFlipBack(_loc9);
            }
            else
            {
                _loc9 = _loc2._model._curPageNumbers[0];
                _loc10 = _loc5.getPageLink(_loc9);
                _loc10.onFlipBack();
                _loc5.onFlipBack(_loc9);
            } // end else if
            _loc2._bookState = _loc2._const.UNACTIVE_STATE;
            _loc2._cache.restoreWorkPages();
            _loc2.redrawBook();
        } // end if
    }
    else if (_loc2._bookState == _loc2._const.GOTOPAGE_STATE || _loc2._bookState == _loc2._const.FLIP_GOTOPAGE_STATE)
    {
        _loc3 = _loc2.__oldX = _loc2.__oldX + (-_loc2.__ox - _loc2.__oldX) * _loc2._gotoSpeed;
        _loc4 = _loc2.__oldY = _loc2.__oldY + (_loc2.__oy - _loc2.__oldY) * _loc2._gotoSpeed;
        _loc2.__movePage(_loc3, _loc4);
        if (_loc3 / -_loc2.__ox > _loc2._minOffset)
        {
            _loc2._cache.restorePages();
            _loc2._model.putPage();
        } // end else if
    } // end else if
};
FFlippingBookView.prototype.__movePage = function (x, y)
{
    var _loc4 = this._pageHeight / 2;
    var _loc5 = this._pageWidth;
    var _loc7 = Math.sqrt((_loc4 + this.__oy) * (_loc4 + this.__oy) + _loc5 * _loc5);
    var _loc6 = Math.sqrt((_loc4 - this.__oy) * (_loc4 - this.__oy) + _loc5 * _loc5);
    var _loc11 = Math.sqrt((_loc4 + y) * (_loc4 + y) + x * x);
    var _loc10 = Math.sqrt((_loc4 - y) * (_loc4 - y) + x * x);
    if (_loc11 > _loc7 || _loc10 > _loc6)
    {
        if (y < this.__oy)
        {
            var _loc8 = Math.asin((_loc4 - y) / _loc10);
            y = _loc4 - Math.sin(_loc8) * _loc6;
            x = x < 0 ? (-Math.cos(_loc8) * _loc6) : (Math.cos(_loc8) * _loc6);
            if (y > this.__oy)
            {
                if (this.__ox * x > 0)
                {
                    y = this.__oy;
                    x = this.__ox;
                }
                else
                {
                    y = this.__oy;
                    x = -this.__ox;
                } // end if
            } // end else if
        }
        else
        {
            _loc8 = Math.asin((y + _loc4) / _loc11);
            y = Math.sin(_loc8) * _loc7 - _loc4;
            x = x < 0 ? (-Math.cos(_loc8) * _loc7) : (Math.cos(_loc8) * _loc7);
            if (y < this.__oy)
            {
                if (this.__ox * x > 0)
                {
                    y = this.__oy;
                    x = this.__ox;
                }
                else
                {
                    y = this.__oy;
                    x = -this.__ox;
                } // end if
            } // end if
        } // end else if
    } // end else if
    if (this.__ox < 0 && x - this.__ox < 5 || this.__ox > 0 && this.__ox - x < 5)
    {
        if (this.__ox < 0)
        {
            x = -_loc5 + 5;
        } // end if
        if (this.__ox > 0)
        {
            x = _loc5 - 5;
        } // end if
    } // end if
    var _loc18 = this.__oy - y;
    var _loc19 = this.__ox - x;
    var _loc15 = Math.atan(_loc18 / _loc19);
    var _loc9 = 2 * _loc15;
    var _loc17 = _loc9 * 5.729578E+001;
    var _loc16 = Math.sin(_loc9);
    var _loc14 = Math.cos(_loc9);
    var _loc13 = x + (_loc4 + this.__oy) * _loc16 - (_loc5 - this.__ox) / 2 * _loc14;
    var _loc12 = y - (_loc4 + this.__oy) * _loc14 - (_loc5 - this.__ox) / 2 * _loc16;
    this.__page03._rotation = _loc17;
    this.__page03._x = _loc13;
    this.__page03._y = _loc12;
    this.__drawMasks(_loc15, _loc13, _loc12, x, y);
    this.__page03._visible = true;
    this.__page04._visible = true;
};
FFlippingBookView.prototype.__drawMasks = function (beta, x, y, _mx, _my)
{
    var pageH = this._pageHeight;
    var pageH2 = pageH / 2;
    var pageW = this._pageWidth;
    var r = Math.sqrt((this.__ox - _mx) * (this.__ox - _mx) + (this.__oy - _my) * (this.__oy - _my));
    var alpha = 2 * beta;
    var cos_a = Math.cos(alpha);
    var sin_a = Math.sin(alpha);
    var cos_b = Math.cos(beta);
    var sin_b = Math.sin(beta);
    var tan_a = sin_a / cos_a;
    var tan_b = Math.tan(beta);
    var bx = 0;
    var by = 0;
    var ax = 0;
    var ay = pageH;
    y = y + pageH2;
    bx = x - y / tan_a;
    ax = bx - pageH * tan_b;
    if (beta == 0)
    {
        if (this.__ox < 0 && x < 0)
        {
            x = ax = bx = -pageW;
        }
        else if (this.__ox > 0 && x > 0)
        {
            x = ax = bx = pageW;
        }
        else
        {
            ax = bx = 0;
        } // end else if
    } // end else if
    var cx = this.__ox > 0 ? (pageW) : (-pageW);
    var cy = 0;
    var dx = cx;
    var dy = pageH;
    var k = this.__ox > 0 ? (0) : (1);
    var px = x + k * pageW * cos_a;
    var py = y + k * pageW * sin_a;
    var fx = px - pageH * sin_a;
    var fy = py + pageH * cos_a;
    var lx = cx;
    var ly = beta != 0 ? ((bx - cx) / tan_b) : (-1);
    var tmpx = 0;
    var tmpy = 0;
    var ccx = cx;
    var ddx = dx;
    cx = 0;
    dx = 0;
    if (this._transpPage04)
    {
        ccx = ddx = cx;
    } // end if
    if (ly < 0 || ly > pageH)
    {
        with (this.__mask03)
        {
            clear();
            moveTo(ax, ay);
            beginFill(16776960, 100);
            lineTo(bx, by);
            lineTo(px, py);
            lineTo(fx, fy);
            lineTo(ax, ay);
            endFill();
        } // End of with
        with (this.__mask12)
        {
            clear();
            moveTo(ax, ay);
            beginFill(0, 100);
            lineTo(bx, by);
            lineTo(cx, cy);
            lineTo(dx, dy);
            lineTo(ax, ay);
            endFill();
        } // End of with
        with (this.__shMask03)
        {
            clear();
            moveTo(ax, ay);
            beginFill(16776960, 100);
            lineTo(bx, by);
            lineTo(px, py);
            lineTo(fx, fy);
            lineTo(ax, ay);
            endFill();
        } // End of with
        with (this.__shMask04)
        {
            clear();
            moveTo(ax, ay);
            beginFill(0, 100);
            lineTo(bx, by);
            lineTo(ccx, cy);
            lineTo(ddx, dy);
            lineTo(ax, ay);
            endFill();
        } // End of with
        with (this.__pagesShadow)
        {
            _rotation = beta * this.radIndex;
            _xscale = this.__ox > 0 ? (r / 4) : (-r / 4);
            ay = ay - pageH2;
            by = by - pageH2;
            var ab = Math.sqrt((ax - bx) * (ax - bx) + (ay - by) * (ay - by));
            _alpha = 2 * pageW - r < 50 ? (2 * (2 * pageW - r)) : (100);
            _x = bx - ab / 2 * sin_b;
            _y = by + ab / 2 * cos_b;
            _visible = true;
        } // End of with
        with (this.__shadow03)
        {
            _rotation = this.__pagesShadow._rotation;
            _xscale = this.__pagesShadow._xscale;
            _alpha = this.__pagesShadow._alpha;
            _x = this.__pagesShadow._x;
            _y = this.__pagesShadow._y;
        } // End of with
        with (this.__shadow04)
        {
            _rotation = this.__pagesShadow._rotation;
            _xscale = -this.__pagesShadow._xscale;
            _alpha = this.__pagesShadow._alpha;
            _x = this.__pagesShadow._x;
            _y = this.__pagesShadow._y;
        } // End of with
    }
    else
    {
        if (bx > pageW || bx < -pageW)
        {
            bx = ax;
            by = ay;
            tmpx = cx;
            tmpy = cy;
            cx = dx;
            cy = dy;
            dx = tmpx;
            dy = tmpy;
            px = fx;
            py = fy;
        } // end if
        with (this.__mask03)
        {
            clear();
            moveTo(lx, ly);
            beginFill(16711680, 100);
            lineTo(px, py);
            lineTo(bx, by);
            lineTo(lx, ly);
            endFill();
        } // End of with
        with (this.__mask12)
        {
            clear();
            moveTo(lx, ly);
            beginFill(0, 100);
            lineTo(bx, by);
            lineTo(cx, cy);
            lineTo(dx, dy);
            lineTo(lx, dy);
            lineTo(lx, ly);
            endFill();
        } // End of with
        with (this.__shMask03)
        {
            clear();
            moveTo(lx, ly);
            beginFill(16711680, 100);
            lineTo(px, py);
            lineTo(bx, by);
            lineTo(lx, ly);
            endFill();
        } // End of with
        with (this.__shMask04)
        {
            clear();
            moveTo(lx, ly);
            beginFill(16711680, 100);
            lineTo(ccx, cy);
            lineTo(bx, by);
            lineTo(lx, ly);
            endFill();
        } // End of with
        with (this.__pagesShadow)
        {
            _rotation = beta * this.radIndex;
            _xscale = this.__ox > 0 ? (r / 4) : (-r / 4);
            ly = ly - pageH2;
            by = by - pageH2;
            var bl = Math.sqrt((lx - bx) * (lx - bx) + (ly - by) * (ly - by));
            _alpha = 2 * pageW - r < 50 ? (2 * (2 * pageW - r)) : (100);
            _x = by < ly ? (bx - bl / 2 * sin_b) : (lx - bl / 2 * sin_b);
            _y = by < ly ? (by + bl / 2 * cos_b) : (ly + bl / 2 * cos_b);
            _visible = true;
        } // End of with
        with (this.__shadow03)
        {
            _rotation = this.__pagesShadow._rotation;
            _xscale = this.__pagesShadow._xscale;
            _alpha = this.__pagesShadow._alpha;
            _x = this.__pagesShadow._x;
            _y = this.__pagesShadow._y;
        } // End of with
        with (this.__shadow04)
        {
            _rotation = this.__pagesShadow._rotation;
            _xscale = -this.__pagesShadow._xscale;
            _alpha = this.__pagesShadow._alpha;
            _x = this.__pagesShadow._x;
            _y = this.__pagesShadow._y;
        } // End of with
    } // end else if
    this.__page03.setMask(this.__mask03);
    this.__shadow03.setMask(this.__shMask03);
    this.__shadow04.setMask(this.__shMask04);
    this.__ox > 0 ? (this.__page02.setMask(this.__mask12)) : (this.__page01.setMask(this.__mask12));
};
FFlippingBookView.prototype.flipCorner = function (position)
{
    if (this._bookState != this._const.UNACTIVE_STATE)
    {
        return;
    } // end if
    this._flipCornerPosition = position;
    this._bookState = this._const.START_FLIP_CORNER_STATE;
    this._flipSound.start(0, 1);
};
FFlippingBookView.prototype._getFlipCornerCoords = function ()
{
    var _loc4 = this._autoFlip;
    var _loc3 = 0;
    var _loc2 = 0;
    switch (this._flipCornerPosition)
    {
        case "top-left":
        {
            _loc3 = -this._pageWidth + this._autoFlip;
            _loc2 = -this._pageHeight / 2 + this._autoFlip / 2;
            break;
        } 
        case "top-right":
        {
            _loc3 = this._pageWidth - this._autoFlip;
            _loc2 = -this._pageHeight / 2 + this._autoFlip / 2;
            break;
        } 
        case "bottom-left":
        {
            _loc3 = -this._pageWidth + this._autoFlip;
            _loc2 = this._pageHeight / 2 - this._autoFlip / 2;
            break;
        } 
        case "bottom-right":
        {
            _loc3 = this._pageWidth - this._autoFlip;
            _loc2 = this._pageHeight / 2 - this._autoFlip / 2;
            break;
        } 
    } // End of switch
    return ({x: _loc3, y: _loc2});
};
FFlippingBookView.prototype.directGotoPage = function (n)
{
    if (this._bookState != this._const.UNACTIVE_STATE)
    {
        return;
    } // end if
    var _loc3 = this._model._currentPage;
    this._model._currentPage = this._model._realPageNumber(n);
    this._cache.restoreDirectGotoPages();
    this._model.__direction = -1;
    var _loc2 = 0;
    if (_loc3 < this._model._currentPage)
    {
        _loc2 = 1;
    } // end if
    this._model.putPage(true, _loc2);
    this.__page01.setMask(null);
    this.__page02.setMask(null);
    this._baseObj.onEndGoto();
};
FFlippingBookView.prototype.flipGotoPage = function (n)
{
    if (this._bookState != this._const.UNACTIVE_STATE)
    {
        return;
    } // end if
    this._bookState = this._const.FLIP_GOTOPAGE_STATE;
    this.__gotoPageIndex = this._model._realPageNumber(n);
    this._model._last_current_page = this._model._currentPage;
    if (this._model._currentPage > this.__gotoPageIndex)
    {
        this.__page04._x = -this._pageWidth;
        this.__ox = -this._pageWidth;
        this.__oy = -this._pageHeight / 2;
    } // end if
    if (this._model._currentPage < this.__gotoPageIndex)
    {
        this.__page04._x = 0;
        this.__ox = this._pageWidth;
        this.__oy = -this._pageHeight / 2;
    } // end if
    this.__oldX = 0;
    this.__oldY = 0;
    this._model.getFlipGotoPage(this.__gotoPageIndex, false);
    if (this._bookState != this._const.UNACTIVE_STATE)
    {
        this._flipSound.start(0, 1);
        this.__pagesShadow._visible = true;
        this.__shadow03._visible = true;
        this.__shadow04._visible = true;
        this.__shadow03.setMask(this.__shMask03);
        this.__shadow04.setMask(this.__shMask04);
        this.__drawShadow12Mask();
    } // end if
};
FFlippingBookView.prototype.gotoPage = function (n)
{
    if (this._bookState != this._const.UNACTIVE_STATE)
    {
        return;
    } // end if
    this._bookState = this._const.GOTOPAGE_STATE;
    this.__gotoPageIndex = this._model._realPageNumber(n);
    if (this._model._currentPage > this.__gotoPageIndex)
    {
        this.__page04._x = -this._pageWidth;
        this.__ox = -this._pageWidth;
        this.__oy = -this._pageHeight / 2;
    } // end if
    if (this._model._currentPage < this.__gotoPageIndex)
    {
        this.__page04._x = 0;
        this.__ox = this._pageWidth;
        this.__oy = -this._pageHeight / 2;
    } // end if
    this.__oldX = 0;
    this.__oldY = 0;
    this._model.getNextGotoPage(this.__gotoPageIndex);
    if (this._bookState != this._const.UNACTIVE_STATE)
    {
        this._flipSound.start(0, 1);
        this.__pagesShadow._visible = true;
        this.__shadow03._visible = true;
        this.__shadow04._visible = true;
        this.__shadow03.setMask(this.__shMask03);
        this.__shadow04.setMask(this.__shMask04);
        this.__drawShadow12Mask();
    } // end if
};
Object.registerClass("FFlippingBookSymbol", FFlippingBookClass);
#endinitclip