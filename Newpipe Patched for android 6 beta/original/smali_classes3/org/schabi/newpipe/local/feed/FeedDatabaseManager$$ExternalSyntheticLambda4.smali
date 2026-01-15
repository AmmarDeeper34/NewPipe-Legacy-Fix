.class public final synthetic Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Ljava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda4;->f$2:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda4;->f$2:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->$r8$lambda$xShoyt_EuQZobRUefNnrbPXA0Vs(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Ljava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
