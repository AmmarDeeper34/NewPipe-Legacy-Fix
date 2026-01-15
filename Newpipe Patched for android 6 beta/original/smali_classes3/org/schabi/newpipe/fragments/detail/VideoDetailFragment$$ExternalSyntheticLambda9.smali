.class public final synthetic Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

.field public final synthetic f$1:Landroid/content/SharedPreferences;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/content/SharedPreferences;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;->f$1:Landroid/content/SharedPreferences;

    iput-boolean p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;->f$1:Landroid/content/SharedPreferences;

    iget-boolean v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;->f$2:Z

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->$r8$lambda$NpU8CH-L060-AErOqewg9JGJjmk(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/content/SharedPreferences;ZLorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method
