.class public final Lj$/util/stream/s;
.super Lj$/util/stream/y0;
.source "SourceFile"


# instance fields
.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/a;II)V
    .locals 0

    iput p3, p0, Lj$/util/stream/s;->s:I

    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-void
.end method


# virtual methods
.method public final D0(ILj$/util/stream/m5;)Lj$/util/stream/m5;
    .locals 1

    iget p1, p0, Lj$/util/stream/s;->s:I

    packed-switch p1, :pswitch_data_0

    .line 248
    new-instance p1, Lj$/util/stream/a1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/a1;-><init>(Lj$/util/stream/a;Lj$/util/stream/m5;I)V

    return-object p1

    :pswitch_0
    return-object p2

    .line 232
    :pswitch_1
    new-instance p1, Lj$/util/stream/p;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/p;-><init>(Lj$/util/stream/a;Lj$/util/stream/m5;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
