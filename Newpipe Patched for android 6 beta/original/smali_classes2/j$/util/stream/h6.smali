.class public final Lj$/util/stream/h6;
.super Lj$/util/stream/f1;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/w8;


# instance fields
.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/a;II)V
    .locals 0

    iput p3, p0, Lj$/util/stream/h6;->s:I

    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-void
.end method


# virtual methods
.method public final A0(Lj$/util/stream/u3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/d2;
    .locals 2

    iget v0, p0, Lj$/util/stream/h6;->s:I

    packed-switch v0, :pswitch_data_0

    .line 506
    new-instance v0, Lj$/util/stream/y8;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/y8;-><init>(Lj$/util/stream/a;Lj$/util/stream/u3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 507
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/d2;

    return-object p1

    .line 196
    :pswitch_0
    new-instance v0, Lj$/util/stream/z8;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/z8;-><init>(Lj$/util/stream/a;Lj$/util/stream/u3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 197
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/d2;

    return-object p1

    .line 232
    :pswitch_1
    sget-object v0, Lj$/util/stream/b7;->SORTED:Lj$/util/stream/b7;

    move-object v1, p1

    check-cast v1, Lj$/util/stream/a;

    .line 509
    iget v1, v1, Lj$/util/stream/a;->m:I

    .line 232
    invoke-virtual {v0, v1}, Lj$/util/stream/b7;->u(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/u3;->d0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/d2;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 236
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/u3;->d0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/d2;

    move-result-object p1

    check-cast p1, Lj$/util/stream/b2;

    .line 238
    invoke-interface {p1}, Lj$/util/stream/c2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    .line 241
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    .line 238
    new-instance p2, Lj$/util/stream/i3;

    invoke-direct {p2, p1}, Lj$/util/stream/i3;-><init>([J)V

    move-object p1, p2

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public B0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    iget v0, p0, Lj$/util/stream/h6;->s:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lj$/util/stream/a;->B0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 492
    :pswitch_0
    sget-object v0, Lj$/util/stream/b7;->ORDERED:Lj$/util/stream/b7;

    .line 509
    iget v1, p1, Lj$/util/stream/a;->m:I

    .line 492
    invoke-virtual {v0, v1}, Lj$/util/stream/b7;->u(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Lj$/util/stream/j2;

    const/16 v1, 0xe

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/j2;-><init>(I)V

    .line 493
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/h6;->A0(Lj$/util/stream/u3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/d2;

    move-result-object p1

    .line 494
    invoke-interface {p1}, Lj$/util/stream/d2;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    goto :goto_0

    .line 497
    :cond_0
    new-instance v0, Lj$/util/stream/e9;

    .line 498
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->u0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/x0;

    const/4 p2, 0x0

    .line 933
    invoke-direct {v0, p1, p2}, Lj$/util/stream/e9;-><init>(Lj$/util/Spliterator;I)V

    move-object p1, v0

    :goto_0
    return-object p1

    .line 182
    :pswitch_1
    sget-object v0, Lj$/util/stream/b7;->ORDERED:Lj$/util/stream/b7;

    .line 509
    iget v1, p1, Lj$/util/stream/a;->m:I

    .line 182
    invoke-virtual {v0, v1}, Lj$/util/stream/b7;->u(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    new-instance v0, Lj$/util/stream/j2;

    const/16 v1, 0xd

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/j2;-><init>(I)V

    .line 183
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/h6;->A0(Lj$/util/stream/u3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/d2;

    move-result-object p1

    .line 184
    invoke-interface {p1}, Lj$/util/stream/d2;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    goto :goto_1

    .line 187
    :cond_1
    new-instance v0, Lj$/util/stream/e9;

    .line 188
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->u0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/x0;

    const/4 p2, 0x1

    .line 933
    invoke-direct {v0, p1, p2}, Lj$/util/stream/e9;-><init>(Lj$/util/Spliterator;I)V

    move-object p1, v0

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final D0(ILj$/util/stream/m5;)Lj$/util/stream/m5;
    .locals 1

    iget v0, p0, Lj$/util/stream/h6;->s:I

    packed-switch v0, :pswitch_data_0

    .line 544
    new-instance p1, Lj$/util/stream/t8;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/t8;-><init>(Lj$/util/stream/h6;Lj$/util/stream/m5;Z)V

    return-object p1

    .line 202
    :pswitch_0
    new-instance p1, Lj$/util/stream/s8;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/s8;-><init>(Lj$/util/stream/h6;Lj$/util/stream/m5;)V

    return-object p1

    .line 218
    :pswitch_1
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lj$/util/stream/b7;->SORTED:Lj$/util/stream/b7;

    invoke-virtual {v0, p1}, Lj$/util/stream/b7;->u(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    sget-object v0, Lj$/util/stream/b7;->SIZED:Lj$/util/stream/b7;

    invoke-virtual {v0, p1}, Lj$/util/stream/b7;->u(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 223
    new-instance p1, Lj$/util/stream/m6;

    .line 528
    invoke-direct {p1, p2}, Lj$/util/stream/h5;-><init>(Lj$/util/stream/m5;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    .line 225
    :cond_1
    new-instance p1, Lj$/util/stream/e6;

    .line 528
    invoke-direct {p1, p2}, Lj$/util/stream/h5;-><init>(Lj$/util/stream/m5;)V

    goto :goto_0

    :goto_1
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h(Lj$/util/stream/v1;Z)Lj$/util/stream/x8;
    .locals 1

    .line 544
    new-instance v0, Lj$/util/stream/t8;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/t8;-><init>(Lj$/util/stream/h6;Lj$/util/stream/m5;Z)V

    return-object v0
.end method
