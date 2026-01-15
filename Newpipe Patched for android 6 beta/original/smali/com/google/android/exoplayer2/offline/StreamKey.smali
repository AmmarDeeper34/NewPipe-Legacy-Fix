.class public final Lcom/google/android/exoplayer2/offline/StreamKey;
.super Ljava/lang/Object;
.source "StreamKey.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/offline/StreamKey;",
        ">;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/exoplayer2/Bundleable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_GROUP_INDEX:Ljava/lang/String;

.field private static final FIELD_PERIOD_INDEX:Ljava/lang/String;

.field private static final FIELD_STREAM_INDEX:Ljava/lang/String;


# instance fields
.field public final groupIndex:I

.field public final periodIndex:I

.field public final streamIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Lcom/google/android/exoplayer2/offline/StreamKey$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/offline/StreamKey$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/offline/StreamKey;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    .line 155
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    const/4 v0, 0x1

    .line 156
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_GROUP_INDEX:Ljava/lang/String;

    const/4 v0, 0x2

    .line 157
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_STREAM_INDEX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/offline/StreamKey;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    .line 73
    iput p2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    .line 74
    iput p3, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/offline/StreamKey;
    .locals 5

    .line 179
    new-instance v0, Lcom/google/android/exoplayer2/offline/StreamKey;

    sget-object v1, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    const/4 v2, 0x0

    .line 180
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v3, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_GROUP_INDEX:Ljava/lang/String;

    .line 181
    invoke-virtual {p0, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_STREAM_INDEX:Ljava/lang/String;

    .line 182
    invoke-virtual {p0, v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v0, v1, v3, p0}, Lcom/google/android/exoplayer2/offline/StreamKey;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/offline/StreamKey;)I
    .locals 2

    .line 115
    iget v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    iget v1, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 117
    iget v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    iget v1, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 119
    iget v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    iget p1, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 44
    check-cast p1, Lcom/google/android/exoplayer2/offline/StreamKey;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/StreamKey;->compareTo(Lcom/google/android/exoplayer2/offline/StreamKey;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 93
    const-class v2, Lcom/google/android/exoplayer2/offline/StreamKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/offline/StreamKey;

    .line 98
    iget v2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    iget p1, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 105
    iget v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    if-eqz v1, :cond_0

    .line 163
    sget-object v2, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 165
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    if-eqz v1, :cond_1

    .line 166
    sget-object v2, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_GROUP_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 168
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    if-eqz v1, :cond_2

    .line 169
    sget-object v2, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_STREAM_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 134
    iget p2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget p2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget p2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
