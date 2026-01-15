.class public abstract Lorg/schabi/newpipe/util/ThemeHelper;
.super Ljava/lang/Object;
.source "ThemeHelper.java"


# direct methods
.method public static getAndroidDimenPx(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 261
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getDialogTheme(Landroid/content/Context;)I
    .locals 0

    .line 101
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->isLightThemeSelected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f130175

    return p0

    :cond_0
    const p0, 0x7f130146

    return p0
.end method

.method public static getGridSpanCount(Landroid/content/Context;I)I
    .locals 0

    .line 413
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr p0, p1

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getGridSpanCountChannels(Landroid/content/Context;)I
    .locals 2

    .line 356
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 355
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/ThemeHelper;->getGridSpanCount(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getGridSpanCountStreams(Landroid/content/Context;)I
    .locals 3

    .line 398
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070392

    .line 400
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f07039d

    .line 401
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 399
    invoke-static {p0, v1}, Lorg/schabi/newpipe/util/ThemeHelper;->getGridSpanCount(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getItemViewMode(Landroid/content/Context;)Lorg/schabi/newpipe/info_list/ItemViewMode;
    .locals 3

    .line 365
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f120232

    .line 366
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120234

    .line 367
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120233

    .line 369
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    sget-object p0, Lorg/schabi/newpipe/info_list/ItemViewMode;->LIST:Lorg/schabi/newpipe/info_list/ItemViewMode;

    return-object p0

    :cond_0
    const v1, 0x7f120231

    .line 371
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    sget-object p0, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    return-object p0

    :cond_1
    const v1, 0x7f120230

    .line 373
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    sget-object p0, Lorg/schabi/newpipe/info_list/ItemViewMode;->CARD:Lorg/schabi/newpipe/info_list/ItemViewMode;

    return-object p0

    .line 377
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 378
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 379
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 381
    sget-object p0, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    return-object p0

    .line 383
    :cond_3
    sget-object p0, Lorg/schabi/newpipe/info_list/ItemViewMode;->LIST:Lorg/schabi/newpipe/info_list/ItemViewMode;

    return-object p0
.end method

.method public static getMinWidthDialogTheme(Landroid/content/Context;)I
    .locals 0

    .line 112
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->isLightThemeSelected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f130174

    return p0

    :cond_0
    const p0, 0x7f130145

    return p0
.end method

.method private static getSelectedNightThemeKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const v0, 0x7f1202eb

    .line 272
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200d3

    .line 274
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 276
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSelectedThemeKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const v0, 0x7f120488

    .line 265
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1200dc

    .line 266
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 268
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSettingsThemeStyle(Landroid/content/Context;)I
    .locals 6

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120226

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12005d

    .line 187
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f12004a

    .line 188
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->getSelectedThemeKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v4, 0x7f130176

    if-eqz v1, :cond_0

    return v4

    .line 195
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v5, 0x7f130138

    if-eqz v1, :cond_1

    return v5

    .line 197
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f130148

    if-eqz v0, :cond_4

    .line 198
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->isDeviceDarkThemeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->getSelectedNightThemeKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v5

    :cond_2
    return v1

    :cond_3
    return v4

    :cond_4
    return v1
.end method

.method public static getThemeForService(Landroid/content/Context;I)I
    .locals 6

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120226

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12005d

    .line 128
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f12004a

    .line 129
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->getSelectedThemeKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v4, 0x7f130139

    const v5, 0x7f130177

    if-eqz v1, :cond_1

    :cond_0
    const v1, 0x7f130177

    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    const v1, 0x7f130139

    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f130149

    if-eqz v0, :cond_3

    .line 141
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->isDeviceDarkThemeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->getSelectedNightThemeKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v0, -0x1

    if-gt p1, v0, :cond_4

    goto :goto_3

    .line 161
    :cond_4
    :try_start_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p1
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v5, :cond_5

    .line 168
    const-string v0, "LightTheme"

    goto :goto_2

    :cond_5
    if-ne v1, v4, :cond_6

    .line 170
    const-string v0, "BlackTheme"

    goto :goto_2

    .line 169
    :cond_6
    const-string v0, "DarkTheme"

    .line 173
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "style"

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_7

    return p0

    :catch_0
    :cond_7
    :goto_3
    return v1
.end method

.method public static isDeviceDarkThemeEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isLightThemeSelected(Landroid/content/Context;)Z
    .locals 3

    .line 85
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->getSelectedThemeKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120226

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f12004a

    .line 89
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->isDeviceDarkThemeEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static resolveColorFromAttr(Landroid/content/Context;I)I
    .locals 3

    .line 224
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 227
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_0

    .line 228
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 231
    :cond_0
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method public static resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 243
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 245
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static setDayNightMode(Landroid/content/Context;)V
    .locals 1

    .line 320
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->getSelectedThemeKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/ThemeHelper;->setDayNightMode(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setDayNightMode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120226

    .line 326
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 327
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    return-void

    :cond_0
    const v0, 0x7f1200c6

    .line 328
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f12005d

    .line 329
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    .line 332
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    return-void

    :cond_2
    :goto_0
    const/4 p0, 0x2

    .line 330
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    return-void
.end method

.method public static setTheme(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    .line 60
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/ThemeHelper;->setTheme(Landroid/content/Context;I)V

    return-void
.end method

.method public static setTheme(Landroid/content/Context;I)V
    .locals 0

    .line 75
    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/ThemeHelper;->getThemeForService(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static setTitleToAppCompatActivity(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 1

    .line 288
    instance-of v0, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 289
    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 291
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static shouldUseGridLayout(Landroid/content/Context;)Z
    .locals 1

    .line 344
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->getItemViewMode(Landroid/content/Context;)Lorg/schabi/newpipe/info_list/ItemViewMode;

    move-result-object p0

    .line 345
    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
