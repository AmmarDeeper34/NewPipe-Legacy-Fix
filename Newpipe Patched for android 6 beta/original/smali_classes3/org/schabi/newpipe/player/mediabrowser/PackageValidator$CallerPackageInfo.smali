.class final Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;
.super Ljava/lang/Object;
.source "PackageValidator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallerPackageInfo"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final permissions:Ljava/util/Set;

.field private final signature:Ljava/lang/String;

.field private final uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->name:Ljava/lang/String;

    .line 232
    iput-object p2, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->packageName:Ljava/lang/String;

    .line 233
    iput p3, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->uid:I

    .line 234
    iput-object p4, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->signature:Ljava/lang/String;

    .line 235
    iput-object p5, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->permissions:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->uid:I

    iget v3, p1, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->uid:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->signature:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->signature:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->permissions:Ljava/util/Set;

    iget-object p1, p1, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->permissions:Ljava/util/Set;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPermissions()Ljava/util/Set;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->permissions:Ljava/util/Set;

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid()I
    .locals 1

    .line 233
    iget v0, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->uid:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->uid:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->signature:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->permissions:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->uid:I

    iget-object v3, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->signature:Ljava/lang/String;

    iget-object v4, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->permissions:Ljava/util/Set;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallerPackageInfo(name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", packageName="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uid="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", signature="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", permissions="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
