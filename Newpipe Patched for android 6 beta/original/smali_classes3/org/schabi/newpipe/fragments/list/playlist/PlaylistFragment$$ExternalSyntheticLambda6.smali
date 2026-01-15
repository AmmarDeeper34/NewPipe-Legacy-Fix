.class public final synthetic Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->$r8$lambda$M8Tq9ZuRc3pR_Or0usNwwKC0uWE(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
