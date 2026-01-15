.class public final synthetic Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;JLjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    iput-wide p2, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->f$1:J

    iput-object p4, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    iget-wide v1, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->f$1:J

    iget-object v3, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->$r8$lambda$BJJBltzn_hGdpb7tfi0F_cuP3Hw(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;JLjava/util/List;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
