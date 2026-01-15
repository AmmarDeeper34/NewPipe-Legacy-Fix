.class public final synthetic Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->$r8$lambda$u67LkxKfZRDHybmZuPPBeiTzsuo(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
