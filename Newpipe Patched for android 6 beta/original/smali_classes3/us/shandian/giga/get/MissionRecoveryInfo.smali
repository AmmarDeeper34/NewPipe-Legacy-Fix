.class public final Lus/shandian/giga/get/MissionRecoveryInfo;
.super Ljava/lang/Object;
.source "MissionRecoveryInfo.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lus/shandian/giga/get/MissionRecoveryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private desired:Ljava/lang/String;

.field private desiredBitrate:I

.field private format:Lorg/schabi/newpipe/extractor/MediaFormat;

.field private isDesired2:Z

.field private kind:C

.field private validateCondition:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lus/shandian/giga/get/MissionRecoveryInfo$Creator;

    invoke-direct {v0}, Lus/shandian/giga/get/MissionRecoveryInfo$Creator;-><init>()V

    sput-object v0, Lus/shandian/giga/get/MissionRecoveryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;ZICLjava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->format:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 15
    iput-object p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    .line 16
    iput-boolean p3, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    .line 17
    iput p4, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desiredBitrate:I

    .line 18
    iput-char p5, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    .line 19
    iput-object p6, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->validateCondition:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;ZICLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p8, p7, 0x4

    const/4 v1, 0x0

    if-eqz p8, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_2

    const/4 p4, 0x0

    :cond_2
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_3

    const/4 p5, 0x0

    :cond_3
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_4

    move-object p7, v0

    :goto_0
    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_1

    :cond_4
    move-object p7, p6

    goto :goto_0

    .line 13
    :goto_1
    invoke-direct/range {p1 .. p7}, Lus/shandian/giga/get/MissionRecoveryInfo;-><init>(Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;ZICLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/Stream;)V
    .locals 10

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v2

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lus/shandian/giga/get/MissionRecoveryInfo;-><init>(Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;ZICLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    if-eqz v0, :cond_0

    .line 24
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    move-result p1

    iput p1, v1, Lus/shandian/giga/get/MissionRecoveryInfo;->desiredBitrate:I

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, v1, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    const/16 p1, 0x61

    .line 26
    iput-char p1, v1, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    return-void

    .line 28
    :cond_0
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    if-eqz v0, :cond_1

    .line 29
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly()Z

    move-result p1

    iput-boolean p1, v1, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    const/16 p1, 0x76

    .line 31
    iput-char p1, v1, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    return-void

    .line 33
    :cond_1
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    if-eqz v0, :cond_2

    .line 34
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getLanguageTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->isAutoGenerated()Z

    move-result p1

    iput-boolean p1, v1, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    const/16 p1, 0x73

    .line 36
    iput-char p1, v1, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    return-void

    .line 38
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown stream kind"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final getDesired()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    return-object v0
.end method

.method public final getDesiredBitrate()I
    .locals 1

    .line 17
    iget v0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desiredBitrate:I

    return v0
.end method

.method public final getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    .line 14
    iget-object v0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->format:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object v0
.end method

.method public final getKind()C
    .locals 1

    .line 18
    iget-char v0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    return v0
.end method

.method public final getValidateCondition()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->validateCondition:Ljava/lang/String;

    return-object v0
.end method

.method public final isDesired2()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    return v0
.end method

.method public final setValidateCondition(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->validateCondition:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const-string v1, "{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-char v1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    const/16 v2, 0x61

    if-eq v1, v2, :cond_2

    const/16 v2, 0x73

    if-eq v1, v2, :cond_1

    const/16 v2, 0x76

    if-eq v1, v2, :cond_0

    .line 61
    const-string v1, "other"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    goto :goto_0

    .line 52
    :cond_0
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    iget-boolean v2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "quality="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " videoOnly="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 56
    :cond_1
    const-string v1, "subtitles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    iget-boolean v2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "language="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " autoGenerated="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 48
    :cond_2
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desiredBitrate:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitrate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    :goto_0
    const-string v2, " format="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->format:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/MediaFormat;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 0
    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->format:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desiredBitrate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-char p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->validateCondition:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
