.class public final Lj$/util/stream/z4;
.super Lj$/util/stream/d5;
.source "SourceFile"


# instance fields
.field public final synthetic s:I

.field public final synthetic t:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/e5;ILjava/util/function/Function;I)V
    .locals 0

    iput p4, p0, Lj$/util/stream/z4;->s:I

    iput-object p3, p0, Lj$/util/stream/z4;->t:Ljava/util/function/Function;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-void
.end method


# virtual methods
.method public final D0(ILj$/util/stream/m5;)Lj$/util/stream/m5;
    .locals 1

    iget p1, p0, Lj$/util/stream/z4;->s:I

    packed-switch p1, :pswitch_data_0

    .line 260
    new-instance p1, Lj$/util/stream/l;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/l;-><init>(Lj$/util/stream/z4;Lj$/util/stream/m5;)V

    return-object p1

    .line 192
    :pswitch_0
    new-instance p1, Lj$/util/stream/m;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/m;-><init>(Lj$/util/stream/a;Lj$/util/stream/m5;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
