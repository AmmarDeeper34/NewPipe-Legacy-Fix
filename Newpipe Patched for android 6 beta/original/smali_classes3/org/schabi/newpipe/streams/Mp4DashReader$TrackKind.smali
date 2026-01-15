.class public final enum Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;
.super Ljava/lang/Enum;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackKind"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

.field public static final enum Audio:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

.field public static final enum Other:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

.field public static final enum Subtitles:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

.field public static final enum Video:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;


# direct methods
.method private static synthetic $values()[Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;
    .locals 3

    const/4 v0, 0x4

    .line 65
    new-array v0, v0, [Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    sget-object v1, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->Audio:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->Video:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->Subtitles:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->Other:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 66
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    const-string v1, "Audio"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->Audio:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    const-string v1, "Video"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->Video:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    const-string v1, "Subtitles"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->Subtitles:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    const-string v1, "Other"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->Other:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    .line 65
    invoke-static {}, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->$values()[Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->$VALUES:[Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;
    .locals 1

    .line 65
    const-class v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;
    .locals 1

    .line 65
    sget-object v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->$VALUES:[Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    return-object v0
.end method
