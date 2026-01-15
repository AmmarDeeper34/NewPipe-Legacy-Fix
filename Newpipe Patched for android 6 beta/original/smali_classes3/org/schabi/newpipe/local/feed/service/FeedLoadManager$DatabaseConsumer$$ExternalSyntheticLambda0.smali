.class public final synthetic Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;

.field public final synthetic f$2:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;

    iput-object p3, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer$$ExternalSyntheticLambda0;->f$2:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;

    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer$$ExternalSyntheticLambda0;->f$2:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;->$r8$lambda$BTvKTp8pGsujE1PWFQysDl8HOus(Ljava/util/List;Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V

    return-void
.end method
