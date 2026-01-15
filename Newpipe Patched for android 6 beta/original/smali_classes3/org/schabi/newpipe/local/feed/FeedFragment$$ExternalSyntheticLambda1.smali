.class public final synthetic Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/xwray/groupie/OnAsyncUpdateListener;


# instance fields
.field public final synthetic f$0:Lj$/time/OffsetDateTime;

.field public final synthetic f$1:Lorg/schabi/newpipe/local/feed/FeedFragment;


# direct methods
.method public synthetic constructor <init>(Lj$/time/OffsetDateTime;Lorg/schabi/newpipe/local/feed/FeedFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;->f$0:Lj$/time/OffsetDateTime;

    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/local/feed/FeedFragment;

    return-void
.end method


# virtual methods
.method public final onUpdateComplete()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;->f$0:Lj$/time/OffsetDateTime;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/local/feed/FeedFragment;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->$r8$lambda$kGanrJL79fkg3vUjBJ20C_17kxI(Lj$/time/OffsetDateTime;Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    return-void
.end method
