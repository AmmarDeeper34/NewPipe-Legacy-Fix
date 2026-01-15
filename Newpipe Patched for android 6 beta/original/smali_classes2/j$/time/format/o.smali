.class public final synthetic Lj$/time/format/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lj$/time/format/p;

.field public final synthetic b:Lj$/time/format/w;

.field public final synthetic c:J

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lj$/time/format/p;Lj$/time/format/w;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/o;->a:Lj$/time/format/p;

    iput-object p2, p0, Lj$/time/format/o;->b:Lj$/time/format/w;

    iput-wide p3, p0, Lj$/time/format/o;->c:J

    iput p5, p0, Lj$/time/format/o;->d:I

    iput p6, p0, Lj$/time/format/o;->e:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lj$/time/chrono/l;

    .line 3007
    iget-object v0, p0, Lj$/time/format/o;->a:Lj$/time/format/p;

    iget-object v1, p0, Lj$/time/format/o;->b:Lj$/time/format/w;

    iget-wide v2, p0, Lj$/time/format/o;->c:J

    iget v4, p0, Lj$/time/format/o;->d:I

    iget v5, p0, Lj$/time/format/o;->e:I

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/p;->c(Lj$/time/format/w;JII)I

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
