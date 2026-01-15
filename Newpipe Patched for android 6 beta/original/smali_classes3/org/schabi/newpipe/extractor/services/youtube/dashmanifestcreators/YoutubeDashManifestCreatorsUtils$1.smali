.class abstract synthetic Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils$1;
.super Ljava/lang/Object;
.source "YoutubeDashManifestCreatorsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$schabi$newpipe$extractor$stream$AudioTrackType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 323
    invoke-static {}, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->values()[Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils$1;->$SwitchMap$org$schabi$newpipe$extractor$stream$AudioTrackType:[I

    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->ORIGINAL:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils$1;->$SwitchMap$org$schabi$newpipe$extractor$stream$AudioTrackType:[I

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->DUBBED:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils$1;->$SwitchMap$org$schabi$newpipe$extractor$stream$AudioTrackType:[I

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->DESCRIPTIVE:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
