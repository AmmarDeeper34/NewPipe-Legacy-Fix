.class abstract synthetic Lorg/schabi/newpipe/player/PlayQueueActivity$5;
.super Ljava/lang/Object;
.source "PlayQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/PlayQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$schabi$newpipe$extractor$stream$StreamType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 511
    invoke-static {}, Lorg/schabi/newpipe/extractor/stream/StreamType;->values()[Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/schabi/newpipe/player/PlayQueueActivity$5;->$SwitchMap$org$schabi$newpipe$extractor$stream$StreamType:[I

    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/schabi/newpipe/player/PlayQueueActivity$5;->$SwitchMap$org$schabi$newpipe$extractor$stream$StreamType:[I

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
