.class public final Lorg/schabi/newpipe/player/TimestampChangeData$Creator;
.super Ljava/lang/Object;
.source "PlayerIntentType.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/TimestampChangeData;
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
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/TimestampChangeData$Creator;->createFromParcel(Landroid/os/Parcel;)Lorg/schabi/newpipe/player/TimestampChangeData;

    move-result-object p1

    return-object p1
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lorg/schabi/newpipe/player/TimestampChangeData;
    .locals 3

    .line 0
    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/schabi/newpipe/player/TimestampChangeData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lorg/schabi/newpipe/player/TimestampChangeData;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/TimestampChangeData$Creator;->newArray(I)[Lorg/schabi/newpipe/player/TimestampChangeData;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lorg/schabi/newpipe/player/TimestampChangeData;
    .locals 0

    .line 0
    new-array p1, p1, [Lorg/schabi/newpipe/player/TimestampChangeData;

    return-object p1
.end method
