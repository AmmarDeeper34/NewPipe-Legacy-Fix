.class public final synthetic Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda1;
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
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Flowable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method
