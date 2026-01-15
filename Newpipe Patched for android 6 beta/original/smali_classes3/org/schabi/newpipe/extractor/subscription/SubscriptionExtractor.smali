.class public abstract Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;
.super Ljava/lang/Object;
.source "SubscriptionExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;,
        Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;
    }
.end annotation


# instance fields
.field protected final service:Lorg/schabi/newpipe/extractor/StreamingService;

.field private final supportedSources:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/util/List;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 49
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;->supportedSources:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public fromChannelUrl(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 71
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t support extracting from a channel url"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 96
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t support extracting from an InputStream"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getRelatedUrl()Ljava/lang/String;
.end method

.method public getSupportedSources()Ljava/util/List;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;->supportedSources:Ljava/util/List;

    return-object v0
.end method
