.class public final Lcom/google/android/exoplayer2/DeviceInfo$Builder;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private maxVolume:I

.field private minVolume:I

.field private final playbackType:I

.field private routingControllerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->playbackType:I

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->playbackType:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->minVolume:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->maxVolume:I

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 2

    .line 129
    iget v0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->minVolume:I

    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->maxVolume:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 130
    new-instance v0, Lcom/google/android/exoplayer2/DeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/DeviceInfo;-><init>(Lcom/google/android/exoplayer2/DeviceInfo$Builder;Lcom/google/android/exoplayer2/DeviceInfo$1;)V

    return-object v0
.end method

.method public setMaxVolume(I)Lcom/google/android/exoplayer2/DeviceInfo$Builder;
    .locals 0

    .line 101
    iput p1, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->maxVolume:I

    return-object p0
.end method

.method public setMinVolume(I)Lcom/google/android/exoplayer2/DeviceInfo$Builder;
    .locals 0

    .line 89
    iput p1, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->minVolume:I

    return-object p0
.end method

.method public setRoutingControllerId(Ljava/lang/String;)Lcom/google/android/exoplayer2/DeviceInfo$Builder;
    .locals 1

    .line 122
    iget v0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->playbackType:I

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 123
    iput-object p1, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    return-object p0
.end method
