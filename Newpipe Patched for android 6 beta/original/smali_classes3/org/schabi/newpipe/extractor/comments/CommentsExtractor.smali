.class public abstract Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;
.super Lorg/schabi/newpipe/extractor/ListExtractor;
.source "CommentsExtractor.java"


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/ListExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method


# virtual methods
.method public getCommentsCount()I
    .locals 1

    .line 0
    const/4 v0, -0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "Comments"

    return-object v0
.end method

.method public isCommentsDisabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
