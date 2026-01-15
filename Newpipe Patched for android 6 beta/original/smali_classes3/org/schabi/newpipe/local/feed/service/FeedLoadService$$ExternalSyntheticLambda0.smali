.class public final synthetic Lorg/schabi/newpipe/local/feed/service/FeedLoadService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lio/reactivex/rxjava3/core/Flowable;

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->$r8$lambda$uDluRqJYxGM69yfVsTVx93FFF5Y(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method
