.class public final synthetic Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/SparseItemUtil;->$r8$lambda$N0JjOrCsrYmMTiJRFP2tZlu_4yI(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method
