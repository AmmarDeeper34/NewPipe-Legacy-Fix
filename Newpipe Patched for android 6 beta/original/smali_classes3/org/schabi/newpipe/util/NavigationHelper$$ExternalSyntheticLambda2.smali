.class public final synthetic Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/util/NavigationHelper$RunnableWithVideoDetailFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/util/NavigationHelper$RunnableWithVideoDetailFragment;Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/util/NavigationHelper$RunnableWithVideoDetailFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/util/NavigationHelper$RunnableWithVideoDetailFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/NavigationHelper;->$r8$lambda$rGa9PW25vBKljuDDqeGmIWeAenI(Lorg/schabi/newpipe/util/NavigationHelper$RunnableWithVideoDetailFragment;Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    return-void
.end method
