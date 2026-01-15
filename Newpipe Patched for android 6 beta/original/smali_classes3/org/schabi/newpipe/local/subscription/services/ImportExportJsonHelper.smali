.class public abstract Lorg/schabi/newpipe/local/subscription/services/ImportExportJsonHelper;
.super Ljava/lang/Object;
.source "ImportExportJsonHelper.java"


# direct methods
.method public static readFrom(Ljava/io/InputStream;Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;)Ljava/util/List;
    .locals 5

    .line 69
    const-string v0, "subscriptions"

    if-eqz p0, :cond_4

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 78
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;->onSizeReceived(I)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 89
    instance-of v2, v0, Lcom/grack/nanojson/JsonObject;

    if-eqz v2, :cond_1

    .line 90
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 91
    const-string v2, "service_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 92
    const-string v3, "url"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    const-string v4, "name"

    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 96
    new-instance v4, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;

    invoke-direct {v4, v2, v3, v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 98
    invoke-interface {p1, v0}, Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;->onItemCompleted(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v1

    .line 79
    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    const-string p1, "Channels array is null"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 104
    new-instance p1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    const-string v0, "Couldn\'t parse json"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 70
    :cond_4
    new-instance p0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    const-string p1, "input is null"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeTo(Ljava/util/List;Lcom/grack/nanojson/JsonAppendableWriter;Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 134
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2, v0}, Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;->onSizeReceived(I)V

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonAppendableWriter;->object()Lcom/grack/nanojson/JsonWriterBase;

    .line 139
    const-string v0, "app_version"

    const-string v1, "0.28.1"

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonAppendableWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 140
    const-string v0, "app_version_int"

    const/16 v1, 0x3ee

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonAppendableWriter;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonWriterBase;

    .line 142
    const-string v0, "subscriptions"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonAppendableWriter;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 143
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;

    .line 144
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonAppendableWriter;->object()Lcom/grack/nanojson/JsonWriterBase;

    .line 145
    const-string v1, "service_id"

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;->getServiceId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/grack/nanojson/JsonAppendableWriter;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonWriterBase;

    .line 146
    const-string v1, "url"

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/grack/nanojson/JsonAppendableWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 147
    const-string v1, "name"

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/grack/nanojson/JsonAppendableWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 148
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonAppendableWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    if-eqz p2, :cond_1

    .line 151
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;->onItemCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonAppendableWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    .line 156
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonAppendableWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    return-void
.end method

.method public static writeTo(Ljava/util/List;Ljava/io/OutputStream;Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;)V
    .locals 0

    .line 119
    invoke-static {p1}, Lcom/grack/nanojson/JsonWriter;->on(Ljava/io/OutputStream;)Lcom/grack/nanojson/JsonAppendableWriter;

    move-result-object p1

    .line 120
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/services/ImportExportJsonHelper;->writeTo(Ljava/util/List;Lcom/grack/nanojson/JsonAppendableWriter;Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;)V

    .line 121
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonAppendableWriter;->done()V

    return-void
.end method
