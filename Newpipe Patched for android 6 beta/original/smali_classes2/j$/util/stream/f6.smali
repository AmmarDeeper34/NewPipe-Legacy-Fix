.class public final Lj$/util/stream/f6;
.super Lj$/util/stream/x;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/w8;


# instance fields
.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/a;II)V
    .locals 0

    iput p3, p0, Lj$/util/stream/f6;->s:I

    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-void
.end method


# virtual methods
.method public final A0(Lj$/util/stream/u3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/d2;
    .locals 2

    iget v0, p0, Lj$/util/stream/f6;->s:I

    packed-switch v0, :pswitch_data_0

    .line 581
    new-instance v0, Lj$/util/stream/y8;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/y8;-><init>(Lj$/util/stream/a;Lj$/util/stream/u3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 582
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/d2;

    return-object p1

    .line 253
    :pswitch_0
    new-instance v0, Lj$/util/stream/z8;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/z8;-><init>(Lj$/util/stream/a;Lj$/util/stream/u3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 254
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/d2;

    return-object p1

    .line 273
    :pswitch_1
    sget-object v0, Lj$/util/stream/b7;->SORTED:Lj$/util/stream/b7;

    move-object v1, p1

    check-cast v1, Lj$/util/stream/a;

    .line 509
    iget v1, v1, Lj$/util/stream/a;->m:I

    .line 273
    invoke-virtual {v0, v1}, Lj$/util/stream/b7;->u(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/u3;->d0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/d2;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 277
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/u3;->d0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/d2;

    move-result-object p1

    check-cast p1, Lj$/util/stream/x1;

    .line 279
    invoke-interface {p1}, Lj$/util/stream/c2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    .line 282
    invoke-static {p1}, Ljava/util/Arrays;->sort([D)V

    .line 275
    new-instance p2, Lj$/util/stream/q2;

    invoke-direct {p2, p1}, Lj$/util/stream/q2;-><init>([D)V

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

    iget v0, p0, Lj$/util/stream/f6;->s:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lj$/util/stream/a;->B0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 567
    :pswitch_0
    sget-object v0, Lj$/util/stream/b7;->ORDERED:Lj$/util/stream/b7;

    .line 509
    iget v1, p1, Lj$/util/stream/a;->m:I

    .line 567
    invoke-virtual {v0, v1}, Lj$/util/stream/b7;->u(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Lj$/util/stream/j2;

    const/16 v1, 0x10

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/j2;-><init>(I)V

    .line 568
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/f6;->A0(Lj$/util/stream/u3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/d2;

    move-result-object p1

    .line 569
    invoke-interface {p1}, Lj$/util/stream/d2;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    goto :goto_0

    .line 572
    :cond_0
    new-instance v0, Lj$/util/stream/a9;

    .line 573
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->u0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/s0;

    const/4 p2, 0x0

    .line 1038
    invoke-direct {v0, p1, p2}, Lj$/util/stream/a9;-><init>(Lj$/util/Spliterator;I)V

    move-object p1, v0

    :goto_0
    return-object p1

    .line 239
    :pswitch_1
    sget-object v0, Lj$/util/stream/b7;->ORDERED:Lj$/util/stream/b7;

    .line 509
    iget v1, p1, Lj$/util/stream/a;->m:I

    .line 239
    invoke-virtual {v0, v1}, Lj$/util/stream/b7;->u(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    new-instance v0, Lj$/util/stream/j2;

    const/16 v1, 0xf

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/j2;-><init>(I)V

    .line 240
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/f6;->A0(Lj$/util/stream/u3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/d2;

    move-result-object p1

    .line 241
    invoke-interface {p1}, Lj$/util/stream/d2;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    goto :goto_1

    .line 244
    :cond_1
    new-instance v0, Lj$/util/stream/a9;

    .line 245
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->u0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/s0;

    const/4 p2, 0x1

    .line 1038
    invoke-direct {v0, p1, p2}, Lj$/util/stream/a9;-><init>(Lj$/util/Spliterator;I)V

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

    iget v0, p0, Lj$/util/stream/f6;->s:I

    packed-switch v0, :pswitch_data_0

    .line 619
    new-instance p1, Lj$/util/stream/v8;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/v8;-><init>(Lj$/util/stream/f6;Lj$/util/stream/m5;Z)V

    return-object p1

    .line 259
    :pswitch_0
    new-instance p1, Lj$/util/stream/u8;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/u8;-><init>(Lj$/util/stream/f6;Lj$/util/stream/m5;)V

    return-object p1

    .line 259
    :pswitch_1
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lj$/util/stream/b7;->SORTED:Lj$/util/stream/b7;

    invoke-virtual {v0, p1}, Lj$/util/stream/b7;->u(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 263
    :cond_0
    sget-object v0, Lj$/util/stream/b7;->SIZED:Lj$/util/stream/b7;

    invoke-virtual {v0, p1}, Lj$/util/stream/b7;->u(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 264
    new-instance p1, Lj$/util/stream/k6;

    .line 627
    invoke-direct {p1, p2}, Lj$/util/stream/f5;-><init>(Lj$/util/stream/m5;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    .line 266
    :cond_1
    new-instance p1, Lj$/util/stream/c6;

    .line 627
    invoke-direct {p1, p2}, Lj$/util/stream/f5;-><init>(Lj$/util/stream/m5;)V

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

    .line 619
    new-instance v0, Lj$/util/stream/v8;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/v8;-><init>(Lj$/util/stream/f6;Lj$/util/stream/m5;Z)V

    return-object v0
.end method
