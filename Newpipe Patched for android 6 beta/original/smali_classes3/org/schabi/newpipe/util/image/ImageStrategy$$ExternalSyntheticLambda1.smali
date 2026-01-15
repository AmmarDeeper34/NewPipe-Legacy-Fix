.class public final synthetic Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 2

    .line 0
    check-cast p1, Lorg/schabi/newpipe/extractor/Image;

    invoke-static {p1}, Lorg/schabi/newpipe/util/image/ImageStrategy;->$r8$lambda$VCv0Og3XjD89LoGs1mT99feE-Bc(Lorg/schabi/newpipe/extractor/Image;)D

    move-result-wide v0

    return-wide v0
.end method
