.class public final synthetic Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/schabi/newpipe/util/NavigationHelper$RunnableWithVideoDetailFragment;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/schabi/newpipe/player/PlayerType;

.field public final synthetic f$3:Landroid/content/Context;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Lorg/schabi/newpipe/player/playqueue/PlayQueue;


# direct methods
.method public synthetic constructor <init>(ZZLorg/schabi/newpipe/player/PlayerType;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$0:Z

    iput-boolean p2, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$2:Lorg/schabi/newpipe/player/PlayerType;

    iput-object p4, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$3:Landroid/content/Context;

    iput p5, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$4:I

    iput-object p6, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$7:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    return-void
.end method


# virtual methods
.method public final run(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 9

    .line 0
    iget-boolean v0, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$0:Z

    iget-boolean v1, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$2:Lorg/schabi/newpipe/player/PlayerType;

    iget-object v3, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$3:Landroid/content/Context;

    iget v4, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$4:I

    iget-object v5, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$6:Ljava/lang/String;

    iget-object v7, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$7:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lorg/schabi/newpipe/util/NavigationHelper;->$r8$lambda$-Xrn6qjbZL5m-7hqhWG9iSKh68w(ZZLorg/schabi/newpipe/player/PlayerType;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    return-void
.end method
