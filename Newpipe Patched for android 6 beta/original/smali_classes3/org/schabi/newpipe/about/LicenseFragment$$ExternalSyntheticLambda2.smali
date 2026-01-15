.class public final synthetic Lorg/schabi/newpipe/about/LicenseFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lorg/schabi/newpipe/about/SoftwareComponent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lorg/schabi/newpipe/about/SoftwareComponent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/about/LicenseFragment$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lorg/schabi/newpipe/about/LicenseFragment$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/about/SoftwareComponent;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/about/LicenseFragment$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lorg/schabi/newpipe/about/LicenseFragment$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/about/SoftwareComponent;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/about/LicenseFragment;->$r8$lambda$J-SnJbVYseilH5MjkRXnnxkQpio(Landroid/content/Context;Lorg/schabi/newpipe/about/SoftwareComponent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
