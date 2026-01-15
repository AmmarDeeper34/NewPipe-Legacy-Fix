.class public Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;
.super Ljava/lang/Object;
.source "PreferenceParser.java"


# instance fields
.field private final allPreferences:Ljava/util/Map;

.field private final context:Landroid/content/Context;

.field private final searchConfiguration:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->context:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->allPreferences:Ljava/util/Map;

    .line 39
    iput-object p2, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->searchConfiguration:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;

    return-void
.end method

.method private getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "http://schemas.android.com/apk/preferencesearch"

    invoke-direct {p0, p1, v0, p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 93
    :cond_0
    const-string v0, "http://schemas.android.com/apk/res/android"

    invoke-direct {p0, p1, v0, p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseSearchResult(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;
    .locals 8

    .line 109
    const-string v0, "key"

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    const-string v0, "entries"

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->readStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, "entryValues"

    invoke-direct {p0, p1, v1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->readStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 113
    new-instance v1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    const-string v4, "title"

    .line 116
    invoke-direct {p0, p1, v4}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-direct {p0, v4, v2, v0, v3}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->tryFillInPreferenceValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "summary"

    .line 121
    invoke-direct {p0, p1, v5}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-direct {p0, p1, v2, v0, v3}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->tryFillInPreferenceValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, ","

    .line 125
    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v6, p2

    move v7, p3

    move-object v3, v4

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method private readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 147
    const-string p1, ""

    return-object p1

    .line 149
    :cond_0
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to readString from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PreferenceParser"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object p1
.end method

.method private readStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 133
    new-array p1, v0, [Ljava/lang/String;

    return-object p1

    .line 135
    :cond_0
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :try_start_0
    iget-object v1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to readStringArray from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PreferenceParser"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :cond_1
    new-array p1, v0, [Ljava/lang/String;

    return-object p1
.end method

.method private tryFillInPreferenceValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 166
    const-string p1, ""

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->allPreferences:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    :goto_0
    return-object p1

    .line 184
    :cond_2
    array-length v0, p3

    if-lez v0, :cond_3

    array-length v0, p4

    array-length v1, p3

    if-ne v0, v1, :cond_3

    .line 185
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p4

    const/4 v0, -0x1

    if-eq p4, v0, :cond_3

    .line 187
    aget-object p2, p3, p4

    .line 191
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p2, p3, p4

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public parse(I)Ljava/util/List;
    .locals 8

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 49
    :try_start_0
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 50
    const-string v2, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-eq v4, v3, :cond_4

    .line 54
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 55
    const-string v4, " > "

    .line 57
    invoke-static {v4, v2}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-direct {p0, v1, v4, p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->parseSearchResult(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    move-result-object v4

    .line 61
    iget-object v5, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->searchConfiguration:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;

    invoke-virtual {v5}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;->getParserIgnoreElements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 62
    invoke-virtual {v4}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->hasData()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "true"

    const-string v6, "http://schemas.android.com/apk/preferencesearch"

    const-string v7, "ignore"

    .line 63
    invoke-direct {p0, v1, v6, v7}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 64
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_4

    .line 66
    :cond_0
    :goto_1
    iget-object v5, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->searchConfiguration:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;

    invoke-virtual {v5}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;->getParserContainerElements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 69
    invoke-virtual {v4}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, ""

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 71
    :cond_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;->searchConfiguration:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;

    .line 72
    invoke-virtual {v4}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;->getParserContainerElements()Ljava/util/List;

    move-result-object v4

    .line 73
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 77
    :cond_3
    :goto_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_4
    return-object v0

    .line 80
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse resid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PreferenceParser"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
