.class public final synthetic Landroidx/work/rxjava3/RxWorker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/work/rxjava3/RxWorker;

.field public final synthetic f$1:Lio/reactivex/rxjava3/core/Single;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/rxjava3/RxWorker;Lio/reactivex/rxjava3/core/Single;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/rxjava3/RxWorker$$ExternalSyntheticLambda0;->f$0:Landroidx/work/rxjava3/RxWorker;

    iput-object p2, p0, Landroidx/work/rxjava3/RxWorker$$ExternalSyntheticLambda0;->f$1:Lio/reactivex/rxjava3/core/Single;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/work/rxjava3/RxWorker$$ExternalSyntheticLambda0;->f$0:Landroidx/work/rxjava3/RxWorker;

    iget-object v1, p0, Landroidx/work/rxjava3/RxWorker$$ExternalSyntheticLambda0;->f$1:Lio/reactivex/rxjava3/core/Single;

    invoke-static {v0, v1, p1}, Landroidx/work/rxjava3/RxWorker;->$r8$lambda$MF0_FqbUzBPwsMb7ASkBIN7FFBQ(Landroidx/work/rxjava3/RxWorker;Lio/reactivex/rxjava3/core/Single;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
