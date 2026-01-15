.class public final enum Lorg/schabi/newpipe/extractor/stream/StreamType;
.super Ljava/lang/Enum;
.source "StreamType.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum AUDIO_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum NONE:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum POST_LIVE_AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 14
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->NONE:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 21
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-string v3, "VIDEO_STREAM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 29
    new-instance v3, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-string v5, "AUDIO_STREAM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 36
    new-instance v5, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-string v7, "LIVE_STREAM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 44
    new-instance v7, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-string v9, "AUDIO_LIVE_STREAM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 58
    new-instance v9, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-string v11, "POST_LIVE_STREAM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 73
    new-instance v11, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-string v13, "POST_LIVE_AUDIO_STREAM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    const/4 v13, 0x7

    .line 7
    new-array v13, v13, [Lorg/schabi/newpipe/extractor/stream/StreamType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lorg/schabi/newpipe/extractor/stream/StreamType;->$VALUES:[Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    .line 7
    const-class v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    .line 7
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->$VALUES:[Lorg/schabi/newpipe/extractor/stream/StreamType;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/stream/StreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method
