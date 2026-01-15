.class public abstract Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper;
.super Ljava/lang/Object;
.source "TabsJsonHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper$InvalidJsonException;
    }
.end annotation


# static fields
.field private static final FALLBACK_INITIAL_TABS_LIST:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 21
    sget-object v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->DEFAULT_KIOSK:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 22
    invoke-virtual {v0}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->getTab()Lorg/schabi/newpipe/settings/tabs/Tab;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->FEED:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 23
    invoke-virtual {v1}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->getTab()Lorg/schabi/newpipe/settings/tabs/Tab;

    move-result-object v1

    sget-object v2, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->SUBSCRIPTIONS:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 24
    invoke-virtual {v2}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->getTab()Lorg/schabi/newpipe/settings/tabs/Tab;

    move-result-object v2

    sget-object v3, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->BOOKMARKS:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 25
    invoke-virtual {v3}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->getTab()Lorg/schabi/newpipe/settings/tabs/Tab;

    move-result-object v3

    .line 21
    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChannelExtractor$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper;->FALLBACK_INITIAL_TABS_LIST:Ljava/util/List;

    return-void
.end method

.method public static getDefaultTabs()Ljava/util/List;
    .locals 1

    .line 105
    sget-object v0, Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper;->FALLBACK_INITIAL_TABS_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static getJsonToSave(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    .line 89
    invoke-static {}, Lcom/grack/nanojson/JsonWriter;->string()Lcom/grack/nanojson/JsonStringWriter;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->object()Lcom/grack/nanojson/JsonWriterBase;

    .line 92
    const-string v1, "tabs"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    if-eqz p0, :cond_0

    .line 94
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 95
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/settings/tabs/Tab;->writeJsonOn(Lcom/grack/nanojson/JsonStringWriter;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    .line 100
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    .line 101
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTabsFromJson(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 43
    const-string v0, "tabs"

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 47
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 53
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 58
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 61
    instance-of v3, v0, Lcom/grack/nanojson/JsonObject;

    if-nez v3, :cond_2

    goto :goto_0

    .line 65
    :cond_2
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/tabs/Tab;->from(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/settings/tabs/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 75
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 76
    invoke-static {}, Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper;->getDefaultTabs()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1

    .line 54
    :cond_5
    :try_start_1
    new-instance p0, Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper$InvalidJsonException;

    const-string v0, "JSON doesn\'t contain \"tabs\" array"

    invoke-direct {p0, v0, v2}, Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper$InvalidJsonException;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper-IA;)V

    throw p0
    :try_end_1
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    :goto_1
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper$InvalidJsonException;

    invoke-direct {v0, p0, v2}, Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper$InvalidJsonException;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper-IA;)V

    throw v0

    .line 44
    :cond_6
    :goto_2
    invoke-static {}, Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper;->getDefaultTabs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
