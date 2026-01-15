.class public abstract Lorg/schabi/newpipe/player/helper/PlayerHelper;
.super Ljava/lang/Object;
.source "PlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;,
        Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;
    }
.end annotation


# static fields
.field private static final FORMATTERS_PROVIDER:Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/player/helper/PlayerHelper;->FORMATTERS_PROVIDER:Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;

    return-void
.end method

.method public static autoQueueOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/util/List;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 5

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 179
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getRelatedItems()Ljava/util/List;

    move-result-object p0

    .line 183
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 187
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    if-eqz v2, :cond_2

    .line 188
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/InfoItem;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 189
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getAutoQueuedSinglePlayQueue(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    move-result-object p0

    return-object p0

    .line 192
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/extractor/InfoItem;

    .line 194
    instance-of v4, v3, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 195
    check-cast v3, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    :cond_4
    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 200
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v1

    .line 201
    :cond_5
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getAutoQueuedSinglePlayQueue(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    move-result-object p0

    return-object p0
.end method

.method public static captionLanguageOf(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;)Ljava/lang/String;
    .locals 2

    .line 119
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getDisplayLanguageName()Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->isAutoGenerated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f120071

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static captionLanguageStemOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 126
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "\\)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 133
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 136
    :cond_1
    const-string v0, "\\("

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static formatPitch(D)Ljava/lang/String;
    .locals 1

    .line 113
    sget-object v0, Lorg/schabi/newpipe/player/helper/PlayerHelper;->FORMATTERS_PROVIDER:Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;->formatters()Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->pitch()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatSpeed(D)Ljava/lang/String;
    .locals 1

    .line 108
    sget-object v0, Lorg/schabi/newpipe/player/helper/PlayerHelper;->FORMATTERS_PROVIDER:Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;->formatters()Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->speed()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getActionForLeftGestureSide(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 219
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f120223

    .line 220
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1200d1

    .line 221
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 220
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getActionForRightGestureSide(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 213
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1203ca

    .line 214
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1200da

    .line 215
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 214
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAutoQueuedSinglePlayQueue(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;
    .locals 2

    .line 400
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 401
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->setAutoQueued(Z)V

    return-object v0
.end method

.method public static getAutoplayType(Landroid/content/Context;)I
    .locals 3

    .line 254
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f120052

    .line 255
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 254
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120051

    .line 256
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const v1, 0x7f120053

    .line 258
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static getCaptionScale(Landroid/content/Context;)F
    .locals 1

    .line 325
    const-class v0, Landroid/view/accessibility/CaptioningManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    if-eqz p0, :cond_1

    .line 327
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static getCaptionStyle(Landroid/content/Context;)Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;
    .locals 1

    .line 301
    const-class v0, Landroid/view/accessibility/CaptioningManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    if-eqz p0, :cond_1

    .line 303
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    move-result-object p0

    return-object p0

    .line 304
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    return-object p0
.end method

.method public static getMinimizeOnExitAction(Landroid/content/Context;)I
    .locals 3

    .line 241
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f12028c

    .line 242
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120290

    .line 243
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const v1, 0x7f12028e

    .line 245
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static getMinimumVideoHeight(F)F
    .locals 1

    .line 0
    const v0, 0x3fe38e39

    div-float/2addr p0, v0

    return p0
.end method

.method private static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 390
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getPreferredCacheSize()J
    .locals 2

    .line 0
    const-wide/32 v0, 0x4000000

    return-wide v0
.end method

.method public static getPreferredFileSize()J
    .locals 2

    .line 0
    const-wide/32 v0, 0x200000

    return-wide v0
.end method

.method public static getProgressiveLoadIntervalBytes(Landroid/content/Context;)I
    .locals 3

    .line 373
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f12039e

    .line 374
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12039b

    .line 375
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f12039d

    .line 377
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 378
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x100000

    return p0

    .line 382
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int/lit16 p0, p0, 0x400

    return p0
.end method

.method public static getQualitySelector()Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;
    .locals 4

    .line 292
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    const/16 v1, 0x61a8

    const v2, 0x3f333333    # 0.7f

    const/16 v3, 0x3e8

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIF)V

    return-object v0
.end method

.method public static getScreenBrightness(Landroid/content/Context;)F
    .locals 7

    .line 340
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1203d2

    .line 342
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x4

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const/high16 v5, -0x40800000    # -1.0f

    cmp-long v6, v3, v1

    if-lez v6, :cond_0

    return v5

    :cond_0
    const v1, 0x7f1203d1

    .line 349
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getSeekParameters(Landroid/content/Context;)Lcom/google/android/exoplayer2/SeekParameters;
    .locals 0

    .line 279
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->isUsingInexactSeek(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/exoplayer2/SeekParameters;->CLOSEST_SYNC:Lcom/google/android/exoplayer2/SeekParameters;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/exoplayer2/SeekParameters;->EXACT:Lcom/google/android/exoplayer2/SeekParameters;

    return-object p0
.end method

.method public static getTimeString(I)Ljava/lang/String;
    .locals 9

    const v0, 0xea60

    .line 91
    rem-int v1, p0, v0

    div-int/lit16 v1, v1, 0x3e8

    const v2, 0x36ee80

    .line 92
    rem-int v3, p0, v2

    div-int/2addr v3, v0

    const v0, 0x5265c00

    .line 93
    rem-int v4, p0, v0

    div-int/2addr v4, v2

    const v2, 0x240c8400

    .line 94
    rem-int/2addr p0, v2

    div-int/2addr p0, v0

    .line 96
    sget-object v0, Lorg/schabi/newpipe/player/helper/PlayerHelper;->FORMATTERS_PROVIDER:Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;->formatters()Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez p0, :cond_0

    .line 98
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v7

    aput-object v4, v8, v6

    aput-object v3, v8, v5

    aput-object v1, v8, v2

    const-string p0, "%d:%02d:%02d:%02d"

    invoke-virtual {v0, p0, v8}, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->stringFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-lez v4, :cond_1

    .line 102
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v7

    aput-object v3, v2, v6

    aput-object v1, v2, v5

    const-string p0, "%d:%02d:%02d"

    invoke-virtual {v0, p0, v2}, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->stringFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 103
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v7

    aput-object v1, v2, v6

    const-string p0, "%02d:%02d"

    invoke-virtual {v0, p0, v2}, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->stringFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static globalScreenOrientationLocked(Landroid/content/Context;)Z
    .locals 3

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 366
    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.sensor.accelerometer"

    .line 369
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isAutoQueueEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 230
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f12004c

    .line 231
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isAutoplayAllowedByUser(Landroid/content/Context;)Z
    .locals 2

    .line 266
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getAutoplayType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 270
    :cond_1
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->isMeteredNetwork(Landroid/content/Context;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public static isClearingQueueConfirmationRequired(Landroid/content/Context;)Z
    .locals 2

    .line 235
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f12009d

    .line 236
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isResumeAfterAudioFocusGain(Landroid/content/Context;)Z
    .locals 2

    .line 208
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1203c5

    .line 209
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isStartMainPlayerFullscreenEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 225
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f12045c

    .line 226
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static isUsingInexactSeek(Landroid/content/Context;)Z
    .locals 2

    .line 394
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1204b8

    .line 395
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static nextResizeModeAndSaveToPrefs(Lorg/schabi/newpipe/player/Player;I)I
    .locals 2

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 433
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 434
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f12021e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 433
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 434
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0
.end method

.method public static resetFormat()V
    .locals 1

    .line 86
    sget-object v0, Lorg/schabi/newpipe/player/helper/PlayerHelper;->FORMATTERS_PROVIDER:Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;->reset()V

    return-void
.end method

.method public static resizeTypeOf(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const p1, 0x7f1203c0

    .line 148
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 152
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized resize mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p1, 0x7f1203be

    .line 146
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f1203bf

    .line 144
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static retrievePlaybackParametersFromPrefs(Lorg/schabi/newpipe/player/Player;)Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 4

    .line 439
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12036a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlaybackSpeed()F

    move-result v2

    .line 439
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 441
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120366

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlaybackPitch()F

    move-result p0

    .line 441
    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    .line 443
    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v1, v0, p0}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    return-object v1
.end method

.method public static retrieveResizeModeFromPrefs(Lorg/schabi/newpipe/player/Player;)I
    .locals 2

    .line 410
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f12021e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static retrieveSeekDurationFromPreferences(Lorg/schabi/newpipe/player/Player;)I
    .locals 3

    .line 463
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 464
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1203de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f1203dd

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 463
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static savePlaybackParametersToPrefs(Lorg/schabi/newpipe/player/Player;FFZ)V
    .locals 3

    .line 450
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 451
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12036a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 452
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120366

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 453
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f120368

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 455
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setScreenBrightness(Landroid/content/Context;F)V
    .locals 2

    .line 355
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f1203d1

    .line 356
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const v0, 0x7f1203d2

    .line 357
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 357
    invoke-interface {p1, p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 359
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
