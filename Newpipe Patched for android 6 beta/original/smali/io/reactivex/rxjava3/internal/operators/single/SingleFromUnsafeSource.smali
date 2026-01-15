.class public final Lio/reactivex/rxjava3/internal/operators/single/SingleFromUnsafeSource;
.super Lio/reactivex/rxjava3/core/Single;
.source "SingleFromUnsafeSource.java"


# instance fields
.field final source:Lio/reactivex/rxjava3/core/SingleSource;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/SingleSource;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Single;-><init>()V

    .line 22
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFromUnsafeSource;->source:Lio/reactivex/rxjava3/core/SingleSource;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFromUnsafeSource;->source:Lio/reactivex/rxjava3/core/SingleSource;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleSource;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void
.end method
