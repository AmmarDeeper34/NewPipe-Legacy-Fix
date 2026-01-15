.class public final Lorg/schabi/newpipe/player/TimestampChangeData;
.super Ljava/lang/Object;
.source "PlayerIntentType.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/schabi/newpipe/player/TimestampChangeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final seconds:I

.field private final serviceId:I

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/schabi/newpipe/player/TimestampChangeData$Creator;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/TimestampChangeData$Creator;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/player/TimestampChangeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->serviceId:I

    .line 22
    iput-object p2, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->url:Ljava/lang/String;

    .line 23
    iput p3, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->seconds:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/player/TimestampChangeData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/player/TimestampChangeData;

    iget v1, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->serviceId:I

    iget v3, p1, Lorg/schabi/newpipe/player/TimestampChangeData;->serviceId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/player/TimestampChangeData;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->seconds:I

    iget p1, p1, Lorg/schabi/newpipe/player/TimestampChangeData;->seconds:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getSeconds()I
    .locals 1

    .line 23
    iget v0, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->seconds:I

    return v0
.end method

.method public final getServiceId()I
    .locals 1

    .line 21
    iget v0, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->serviceId:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget v0, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->serviceId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->seconds:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 0
    iget v0, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->url:Ljava/lang/String;

    iget v2, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->seconds:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimestampChangeData(serviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", seconds="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 0
    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->serviceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lorg/schabi/newpipe/player/TimestampChangeData;->seconds:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
