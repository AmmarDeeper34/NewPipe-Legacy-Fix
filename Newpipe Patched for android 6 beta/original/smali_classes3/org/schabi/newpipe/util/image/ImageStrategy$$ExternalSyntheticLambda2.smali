.class public final synthetic Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    check-cast p1, Lorg/schabi/newpipe/extractor/Image;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/image/ImageStrategy;->$r8$lambda$kgLdFDnQrCFsYI_z4DSP7gfDzEM(Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;Lorg/schabi/newpipe/extractor/Image;)I

    move-result p1

    return p1
.end method
