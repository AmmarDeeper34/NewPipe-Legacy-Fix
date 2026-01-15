.class public Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;
.super Ljava/lang/Object;
.source "StreamingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/StreamingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;
    }
.end annotation


# instance fields
.field private final mediaCapabilities:Ljava/util/List;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->name:Ljava/lang/String;

    .line 66
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->mediaCapabilities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMediaCapabilities()Ljava/util/List;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->mediaCapabilities:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->name:Ljava/lang/String;

    return-object v0
.end method
