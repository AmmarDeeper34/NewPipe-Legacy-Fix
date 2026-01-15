.class public final Lus/shandian/giga/get/MissionRecoveryInfo$Creator;
.super Ljava/lang/Object;
.source "MissionRecoveryInfo.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/shandian/giga/get/MissionRecoveryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lus/shandian/giga/get/MissionRecoveryInfo$Creator;->createFromParcel(Landroid/os/Parcel;)Lus/shandian/giga/get/MissionRecoveryInfo;

    move-result-object p1

    return-object p1
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lus/shandian/giga/get/MissionRecoveryInfo;
    .locals 8

    .line 0
    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/MediaFormat;->valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v6, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lus/shandian/giga/get/MissionRecoveryInfo;-><init>(Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;ZICLjava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lus/shandian/giga/get/MissionRecoveryInfo$Creator;->newArray(I)[Lus/shandian/giga/get/MissionRecoveryInfo;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lus/shandian/giga/get/MissionRecoveryInfo;
    .locals 0

    .line 0
    new-array p1, p1, [Lus/shandian/giga/get/MissionRecoveryInfo;

    return-object p1
.end method
