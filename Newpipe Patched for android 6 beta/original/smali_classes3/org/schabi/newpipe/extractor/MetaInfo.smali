.class public Lorg/schabi/newpipe/extractor/MetaInfo;
.super Ljava/lang/Object;
.source "MetaInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private content:Lorg/schabi/newpipe/extractor/stream/Description;

.field private title:Ljava/lang/String;

.field private urlTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->title:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addUrl(Ljava/net/URL;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUrlText(Ljava/lang/String;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContent()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->content:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlTexts()Ljava/util/List;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    return-object v0
.end method

.method public getUrls()Ljava/util/List;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    return-object v0
.end method

.method public setContent(Lorg/schabi/newpipe/extractor/stream/Description;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->content:Lorg/schabi/newpipe/extractor/stream/Description;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->title:Ljava/lang/String;

    return-void
.end method
