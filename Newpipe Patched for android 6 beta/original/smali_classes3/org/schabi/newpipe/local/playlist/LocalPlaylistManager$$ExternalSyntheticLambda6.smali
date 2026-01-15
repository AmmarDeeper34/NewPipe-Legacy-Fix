.class public final synthetic Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/lang/String;JZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda6;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iput-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda6;->f$2:J

    iput-boolean p5, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda6;->f$3:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda6;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda6;->f$2:J

    iget-boolean v4, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda6;->f$3:Z

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->$r8$lambda$FKy7dLaa2qBoLZaV-u_89v6i7kE(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/lang/String;JZLjava/util/List;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
