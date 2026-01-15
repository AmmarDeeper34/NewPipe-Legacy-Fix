.class public final Lorg/schabi/newpipe/about/SoftwareComponent;
.super Ljava/lang/Object;
.source "SoftwareComponent.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/schabi/newpipe/about/SoftwareComponent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final copyrightOwner:Ljava/lang/String;

.field private final license:Lorg/schabi/newpipe/about/License;

.field private final link:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final version:Ljava/lang/String;

.field private final years:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/schabi/newpipe/about/SoftwareComponent$Creator;

    invoke-direct {v0}, Lorg/schabi/newpipe/about/SoftwareComponent$Creator;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/about/SoftwareComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "years"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "copyrightOwner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "license"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/schabi/newpipe/about/SoftwareComponent;->name:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lorg/schabi/newpipe/about/SoftwareComponent;->years:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lorg/schabi/newpipe/about/SoftwareComponent;->copyrightOwner:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lorg/schabi/newpipe/about/SoftwareComponent;->link:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lorg/schabi/newpipe/about/SoftwareComponent;->license:Lorg/schabi/newpipe/about/License;

    .line 16
    iput-object p6, p0, Lorg/schabi/newpipe/about/SoftwareComponent;->version:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 10
    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final getCopyrightOwner()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/schabi/newpipe/about/SoftwareComponent;->copyrightOwner:Ljava/lang/String;

    return-object v0
.end method

.method public final getLicense()Lorg/schabi/newpipe/about/License;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/schabi/newpipe/about/SoftwareComponent;->license:Lorg/schabi/newpipe/about/License;

    return-object v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/schabi/newpipe/about/SoftwareComponent;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/schabi/newpipe/about/SoftwareComponent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getYears()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/schabi/newpipe/about/SoftwareComponent;->years:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 0
    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/schabi/newpipe/about/SoftwareComponent;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/schabi/newpipe/about/SoftwareComponent;->years:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/schabi/newpipe/about/SoftwareComponent;->copyrightOwner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/schabi/newpipe/about/SoftwareComponent;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/schabi/newpipe/about/SoftwareComponent;->license:Lorg/schabi/newpipe/about/License;

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/about/License;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lorg/schabi/newpipe/about/SoftwareComponent;->version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
