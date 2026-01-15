.class abstract Lio/reactivex/rxjava3/internal/operators/maybe/AbstractMaybeWithUpstream;
.super Lio/reactivex/rxjava3/core/Maybe;
.source "AbstractMaybeWithUpstream.java"


# instance fields
.field protected final source:Lio/reactivex/rxjava3/core/MaybeSource;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/MaybeSource;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Maybe;-><init>()V

    .line 30
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/AbstractMaybeWithUpstream;->source:Lio/reactivex/rxjava3/core/MaybeSource;

    return-void
.end method
