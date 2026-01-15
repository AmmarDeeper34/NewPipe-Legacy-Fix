.class public final synthetic Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;JLjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iput-wide p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-wide v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda1;->f$1:J

    iget-object v3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->$r8$lambda$y4RE7mquKJ19dEniV85b3xikC9c(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;JLjava/util/List;)V

    return-void
.end method
