.class public final synthetic Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda8;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iput-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    iput-wide p3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda8;->f$2:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda8;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    iget-wide v2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda8;->f$2:J

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->$r8$lambda$a7uAO2li4-s4qpi1v2De5MSXdP4(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;JLjava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
