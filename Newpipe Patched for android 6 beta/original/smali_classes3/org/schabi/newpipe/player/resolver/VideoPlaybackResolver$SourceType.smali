.class public final enum Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;
.super Ljava/lang/Enum;
.source "VideoPlaybackResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

.field public static final enum LIVE_STREAM:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

.field public static final enum VIDEO_WITH_AUDIO_OR_AUDIO_ONLY:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

.field public static final enum VIDEO_WITH_SEPARATED_AUDIO:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;


# direct methods
.method private static synthetic $values()[Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;
    .locals 3

    const/4 v0, 0x3

    .line 51
    new-array v0, v0, [Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    sget-object v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->LIVE_STREAM:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->VIDEO_WITH_SEPARATED_AUDIO:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->VIDEO_WITH_AUDIO_OR_AUDIO_ONLY:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    const-string v1, "LIVE_STREAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->LIVE_STREAM:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 53
    new-instance v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    const-string v1, "VIDEO_WITH_SEPARATED_AUDIO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->VIDEO_WITH_SEPARATED_AUDIO:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 54
    new-instance v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    const-string v1, "VIDEO_WITH_AUDIO_OR_AUDIO_ONLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->VIDEO_WITH_AUDIO_OR_AUDIO_ONLY:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 51
    invoke-static {}, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->$values()[Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->$VALUES:[Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;
    .locals 1

    .line 51
    const-class v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;
    .locals 1

    .line 51
    sget-object v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->$VALUES:[Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    return-object v0
.end method
