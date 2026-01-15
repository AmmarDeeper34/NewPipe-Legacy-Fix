.class public final synthetic Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/feed/FeedFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda14;->f$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda14;->f$1:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    iput-object p3, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda14;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda14;->f$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda14;->f$1:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda14;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/schabi/newpipe/local/feed/FeedFragment;->$r8$lambda$YJZp5bDsx4DnUTMw1IWSWIKZvWk(Lorg/schabi/newpipe/local/feed/FeedFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
