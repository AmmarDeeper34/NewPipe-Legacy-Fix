.class public final synthetic Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# instance fields
.field public final synthetic f$0:D


# direct methods
.method public synthetic constructor <init>(D)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda6;->f$0:D

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda6;->f$0:D

    check-cast p1, Lorg/schabi/newpipe/extractor/Image;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/util/image/ImageStrategy;->$r8$lambda$u6egPaV75xXnmutWq2a60fGtHxg(DLorg/schabi/newpipe/extractor/Image;)D

    move-result-wide v0

    return-wide v0
.end method
