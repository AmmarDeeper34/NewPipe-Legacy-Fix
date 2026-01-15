.class public final synthetic Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function6;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v6, p6

    check-cast v6, Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lorg/schabi/newpipe/local/feed/FeedViewModel;->$r8$lambda$sCSfO3nnKa2ANcYRtphq7FW1RgI(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;ZZZJLjava/util/List;)Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;

    move-result-object p1

    return-object p1
.end method
