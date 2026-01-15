.class public final synthetic Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;

.field public final synthetic f$1:Lorg/schabi/newpipe/local/feed/FeedFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/local/feed/FeedFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda15;->f$0:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda15;->f$1:Lorg/schabi/newpipe/local/feed/FeedFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda15;->f$0:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda15;->f$1:Lorg/schabi/newpipe/local/feed/FeedFragment;

    invoke-static {v0, v1, p1, p2}, Lorg/schabi/newpipe/local/feed/FeedFragment;->$r8$lambda$loXR8UuleQ6h3ki5Oi5rNKlgohQ(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/local/feed/FeedFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method
