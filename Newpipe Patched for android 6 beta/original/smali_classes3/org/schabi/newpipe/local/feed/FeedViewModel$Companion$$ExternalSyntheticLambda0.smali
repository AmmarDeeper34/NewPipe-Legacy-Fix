.class public final synthetic Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(JLandroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion$$ExternalSyntheticLambda0;->f$0:J

    iput-object p3, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion$$ExternalSyntheticLambda0;->f$0:J

    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    check-cast p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;->$r8$lambda$l8kO5qZy4ZvWsOGOoV1L_qEiig4(JLandroid/content/Context;Landroidx/lifecycle/viewmodel/CreationExtras;)Lorg/schabi/newpipe/local/feed/FeedViewModel;

    move-result-object p1

    return-object p1
.end method
