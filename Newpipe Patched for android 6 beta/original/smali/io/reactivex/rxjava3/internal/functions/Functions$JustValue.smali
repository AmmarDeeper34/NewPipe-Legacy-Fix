.class final Lio/reactivex/rxjava3/internal/functions/Functions$JustValue;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Lio/reactivex/rxjava3/functions/Supplier;
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JustValue"
.end annotation


# instance fields
.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/functions/Functions$JustValue;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 183
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/functions/Functions$JustValue;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public call()Ljava/lang/Object;
    .locals 1

    .line 178
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/functions/Functions$JustValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 188
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/functions/Functions$JustValue;->value:Ljava/lang/Object;

    return-object v0
.end method
