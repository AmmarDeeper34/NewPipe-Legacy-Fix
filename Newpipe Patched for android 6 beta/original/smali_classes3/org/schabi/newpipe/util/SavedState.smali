.class public final Lorg/schabi/newpipe/util/SavedState;
.super Ljava/lang/Object;
.source "SavedState.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/schabi/newpipe/util/SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final pathFileSaved:Ljava/lang/String;

.field private final prefixFileSaved:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/schabi/newpipe/util/SavedState$Creator;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/SavedState$Creator;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/util/SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "prefixFileSaved"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathFileSaved"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/schabi/newpipe/util/SavedState;->prefixFileSaved:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lorg/schabi/newpipe/util/SavedState;->pathFileSaved:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final getPathFileSaved()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/schabi/newpipe/util/SavedState;->pathFileSaved:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrefixFileSaved()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/schabi/newpipe/util/SavedState;->prefixFileSaved:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/util/SavedState;->prefixFileSaved:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/util/SavedState;->pathFileSaved:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " > "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 0
    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/schabi/newpipe/util/SavedState;->prefixFileSaved:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/schabi/newpipe/util/SavedState;->pathFileSaved:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
