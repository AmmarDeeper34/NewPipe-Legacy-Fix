.class public Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;
.super Ljava/lang/Object;
.source "LinkHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected final id:Ljava/lang/String;

.field protected final originalUrl:Ljava/lang/String;

.field protected final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->originalUrl:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->url:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->url:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->originalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->url:Ljava/lang/String;

    return-object v0
.end method
