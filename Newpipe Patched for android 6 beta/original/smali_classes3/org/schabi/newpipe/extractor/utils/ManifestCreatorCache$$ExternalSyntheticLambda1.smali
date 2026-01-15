.class public final synthetic Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->$r8$lambda$dgKJRGSyQryYCxjm027ZJTCLp4w(Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;Ljava/util/Map$Entry;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
