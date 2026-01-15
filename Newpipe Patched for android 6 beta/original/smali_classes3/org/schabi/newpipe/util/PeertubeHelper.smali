.class public abstract Lorg/schabi/newpipe/util/PeertubeHelper;
.super Ljava/lang/Object;
.source "PeertubeHelper.java"


# direct methods
.method public static getCurrentInstance()Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;
    .locals 1

    .line 67
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;->getInstance()Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    move-result-object v0

    return-object v0
.end method

.method public static getInstanceList(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    .line 27
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f120350

    .line 28
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 29
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 31
    invoke-static {}, Lorg/schabi/newpipe/util/PeertubeHelper;->getCurrentInstance()Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 35
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    const-string v0, "instances"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 38
    instance-of v2, v1, Lcom/grack/nanojson/JsonObject;

    if-eqz v2, :cond_1

    .line 39
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 40
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    const-string v3, "url"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    new-instance v3, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    invoke-direct {v3, v1, v2}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0

    .line 47
    :catch_0
    invoke-static {}, Lorg/schabi/newpipe/util/PeertubeHelper;->getCurrentInstance()Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static selectInstance(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;Landroid/content/Context;)Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;
    .locals 4

    .line 54
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f120356

    .line 56
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {}, Lcom/grack/nanojson/JsonWriter;->string()Lcom/grack/nanojson/JsonStringWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->object()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    .line 58
    const-string v2, "name"

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 59
    const-string v2, "url"

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 60
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    sget-object p1, Lorg/schabi/newpipe/extractor/ServiceList;->PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;->setInstance(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)V

    return-object p0
.end method
