.class public final synthetic Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda12;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda12;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda12;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda12;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->$r8$lambda$D7hJQC_9iwKXFrMvghTpr_FF65o(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/schabi/newpipe/databinding/ListStreamItemBinding;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
