.class public final synthetic Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda3;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda3;->f$1:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda3;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda3;->f$1:Landroidx/fragment/app/FragmentManager;

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/QueueItemMenuUtil;->$r8$lambda$0TxXxdjONHG2tL5ZNsYxNS77MKU(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
