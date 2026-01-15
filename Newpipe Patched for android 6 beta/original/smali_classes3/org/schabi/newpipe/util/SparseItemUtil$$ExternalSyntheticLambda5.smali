.class public final synthetic Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda5;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda5;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/util/SparseItemUtil;->$r8$lambda$brE3FeI5KJH_f0HPMoWmqnUuzcU(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/lang/Throwable;)V

    return-void
.end method
