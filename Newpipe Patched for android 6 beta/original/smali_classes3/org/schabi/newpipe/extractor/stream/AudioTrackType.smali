.class public final enum Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
.super Ljava/lang/Enum;
.source "AudioTrackType.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

.field public static final enum DESCRIPTIVE:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

.field public static final enum DUBBED:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

.field public static final enum ORIGINAL:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

.field public static final enum SECONDARY:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 12
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    const-string v1, "ORIGINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->ORIGINAL:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 20
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    const-string v3, "DUBBED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->DUBBED:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 34
    new-instance v3, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    const-string v5, "DESCRIPTIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->DESCRIPTIVE:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 44
    new-instance v5, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    const-string v7, "SECONDARY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->SECONDARY:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    const/4 v7, 0x4

    .line 7
    new-array v7, v7, [Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->$VALUES:[Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
    .locals 1

    .line 7
    const-class v0, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
    .locals 1

    .line 7
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->$VALUES:[Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object v0
.end method
