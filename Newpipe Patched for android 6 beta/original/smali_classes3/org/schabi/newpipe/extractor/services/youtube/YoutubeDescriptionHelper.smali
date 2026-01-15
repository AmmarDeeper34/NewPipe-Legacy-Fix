.class public abstract Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;
.super Ljava/lang/Object;
.source "YoutubeDescriptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;
    }
.end annotation


# static fields
.field private static final LINK_CONTENT_CLEANER_REGEX:Ljava/util/regex/Pattern;


# direct methods
.method public static synthetic $r8$lambda$BZLpMKvRAxc6OCESQPTW9FtWwpA(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 265
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;->LINK_CONTENT_CLEANER_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    .line 267
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static synthetic $r8$lambda$WC2bKn4sAZ9fbij9p2vs1jdSbtQ(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V
    .locals 5

    .line 231
    const-string v0, "onTap"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "innertubeCommand"

    .line 232
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 234
    const-string v1, "startIndex"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 235
    const-string v2, "length"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ltz v1, :cond_2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 245
    :cond_1
    invoke-static {v0}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<a href=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\">"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;->getTransformContentFun(Lcom/grack/nanojson/JsonObject;)Ljava/util/function/Function;

    move-result-object p2

    .line 248
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    const-string v4, "</a>"

    invoke-direct {v3, v0, v4, v1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v4, v1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$ZhYKFMmmaxcgNmoSZu6nof1mOpU(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;)I
    .locals 0

    .line 115
    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->pos:I

    return p0
.end method

.method public static synthetic $r8$lambda$mYpPFx7ESQVJIf6nD_a0h8yhlS8(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V
    .locals 5

    .line 292
    const-string v0, "startIndex"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 293
    const-string v1, "length"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v0, :cond_3

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    .line 299
    const-string v2, "strikethrough"

    invoke-virtual {p2, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    const-string v3, "<s>"

    const-string v4, "</s>"

    invoke-direct {v2, v3, v4, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    invoke-direct {v2, v3, v4, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_1
    const-string v2, "italic"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v2, v3}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    const-string v3, "<i>"

    const-string v4, "</i>"

    invoke-direct {v2, v3, v4, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    invoke-direct {v2, v3, v4, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_2
    const-string v2, "weightLabel"

    invoke-virtual {p2, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "FONT_WEIGHT_NORMAL"

    .line 310
    invoke-virtual {p2, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 311
    new-instance p2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    const-string v2, "<b>"

    const-string v3, "</b>"

    invoke-direct {p2, v2, v3, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    invoke-direct {p0, v2, v3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$rF7RPG210pOgzyvNcpWgcVXWguY(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$xMYLoZPk5hK_1p2OnGsQlIVDryM(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;)I
    .locals 0

    .line 116
    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->pos:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "(?s)^ +[/\u2022] +(.*?) +$"

    .line 38
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;->LINK_CONTENT_CLEANER_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static addAllCommandRuns(Lcom/grack/nanojson/JsonObject;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 226
    const-string v0, "commandRuns"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    .line 227
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 228
    new-instance v0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 229
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 230
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static addAllStyleRuns(Lcom/grack/nanojson/JsonObject;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 287
    const-string v0, "styleRuns"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    .line 288
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 289
    new-instance v0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 290
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 291
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static attributedDescriptionToHtml(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 3

    .line 93
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 97
    :cond_0
    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 104
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-static {p0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;->addAllCommandRuns(Lcom/grack/nanojson/JsonObject;Ljava/util/List;Ljava/util/List;)V

    .line 107
    invoke-static {p0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;->addAllStyleRuns(Lcom/grack/nanojson/JsonObject;Ljava/util/List;Ljava/util/List;)V

    .line 115
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    invoke-static {v1, v2, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;->runsToHtml(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTransformContentFun(Lcom/grack/nanojson/JsonObject;)Ljava/util/function/Function;
    .locals 2

    .line 254
    const-string v0, "onTapOptions"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "accessibilityInfo"

    .line 255
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 256
    const-string v0, "accessibilityLabel"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " Channel Link"

    .line 258
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "YouTube: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 264
    :cond_1
    :goto_0
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda4;-><init>()V

    return-object p0
.end method

.method static runsToHtml(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/16 v0, 0xa0

    const/16 v1, 0x20

    .line 146
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 147
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 148
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 157
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 158
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 159
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    iget v6, v6, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->pos:I

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    iget v7, v7, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->pos:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1

    .line 160
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    iget v6, v6, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->pos:I

    .line 163
    :goto_1
    invoke-virtual {p2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    iget v4, v4, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->pos:I

    if-ne v4, v6, :cond_4

    .line 168
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    add-int/lit8 v3, v3, 0x1

    .line 173
    :goto_2
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 174
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 175
    invoke-virtual {v7, v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->sameOpen(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 179
    iget-object v4, v7, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->transformContent:Ljava/util/function/Function;

    if-eqz v4, :cond_1

    iget v4, v7, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->openPosInOutput:I

    if-ltz v4, :cond_1

    .line 180
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    iget-object v9, v7, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->transformContent:Ljava/util/function/Function;

    iget v10, v7, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->openPosInOutput:I

    .line 182
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 181
    invoke-interface {v9, v10}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 180
    invoke-virtual {v2, v4, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_1
    iget-object v4, v7, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->close:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 190
    :cond_2
    iget-object v8, v7, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->close:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v1, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 193
    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 197
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 198
    iget-object v7, v4, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->open:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 205
    :cond_4
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 206
    iget-object v7, v4, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->open:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    iput v7, v4, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->openPosInOutput:I

    .line 208
    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    :cond_5
    move v4, v6

    goto/16 :goto_0

    .line 214
    :cond_6
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n"

    const-string p2, "<br>"

    .line 217
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "  "

    const-string p2, " &nbsp;"

    .line 218
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
