.class public final Lj$/time/format/p;
.super Lj$/time/format/j;
.source "SourceFile"


# static fields
.field public static final h:Lj$/time/LocalDate;


# instance fields
.field public final g:Lj$/time/chrono/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    .line 2921
    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/format/p;->h:Lj$/time/LocalDate;

    return-void
.end method

.method public constructor <init>(Lj$/time/temporal/p;IILj$/time/chrono/b;I)V
    .locals 6

    .line 2971
    sget-object v4, Lj$/time/format/f0;->NOT_NEGATIVE:Lj$/time/format/f0;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lj$/time/format/j;-><init>(Lj$/time/temporal/p;IILj$/time/format/f0;I)V

    .line 2973
    iput-object p4, v0, Lj$/time/format/p;->g:Lj$/time/chrono/b;

    return-void
.end method


# virtual methods
.method public final a(Lj$/time/format/y;J)J
    .locals 7

    .line 2978
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 2980
    iget-object v2, p0, Lj$/time/format/p;->g:Lj$/time/chrono/b;

    if-eqz v2, :cond_0

    .line 238
    iget-object p1, p1, Lj$/time/format/y;->a:Lj$/time/temporal/TemporalAccessor;

    .line 2981
    invoke-static {p1}, Lj$/com/android/tools/r8/a;->B(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;

    move-result-object p1

    .line 2982
    invoke-interface {p1, v2}, Lj$/time/chrono/l;->I(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/b;

    move-result-object p1

    iget-object v2, p0, Lj$/time/format/j;->a:Lj$/time/temporal/p;

    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-long v2, p1

    .line 2984
    sget-object p1, Lj$/time/format/j;->f:[J

    cmp-long v4, p2, v2

    if-ltz v4, :cond_1

    iget v4, p0, Lj$/time/format/j;->b:I

    aget-wide v4, p1, v4

    add-long/2addr v2, v4

    cmp-long v6, p2, v2

    if-gez v6, :cond_1

    .line 2986
    rem-long/2addr v0, v4

    return-wide v0

    .line 2989
    :cond_1
    iget p2, p0, Lj$/time/format/j;->c:I

    aget-wide p2, p1, p2

    rem-long/2addr v0, p2

    return-wide v0
.end method

.method public final b(Lj$/time/format/w;)Z
    .locals 1

    .line 270
    iget-boolean v0, p1, Lj$/time/format/w;->c:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3064
    :cond_0
    invoke-super {p0, p1}, Lj$/time/format/j;->b(Lj$/time/format/w;)Z

    move-result p1

    return p1
.end method

.method public final c(Lj$/time/format/w;JII)I
    .locals 10

    .line 2995
    iget-object v0, p0, Lj$/time/format/p;->g:Lj$/time/chrono/b;

    if-eqz v0, :cond_1

    .line 2996
    invoke-virtual {p1}, Lj$/time/format/w;->d()Lj$/time/chrono/l;

    move-result-object v1

    .line 2997
    invoke-interface {v1, v0}, Lj$/time/chrono/l;->I(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/b;

    move-result-object v0

    iget-object v1, p0, Lj$/time/format/j;->a:Lj$/time/temporal/p;

    invoke-interface {v0, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result v0

    .line 3001
    new-instance v1, Lj$/time/format/o;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lj$/time/format/o;-><init>(Lj$/time/format/p;Lj$/time/format/w;JII)V

    .line 401
    iget-object p1, v3, Lj$/time/format/w;->e:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 402
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v3, Lj$/time/format/w;->e:Ljava/util/ArrayList;

    .line 404
    :cond_0
    iget-object p1, v3, Lj$/time/format/w;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    const/4 v0, 0x0

    :goto_0
    sub-int p5, v7, v6

    .line 3011
    iget p1, v2, Lj$/time/format/j;->b:I

    if-ne p5, p1, :cond_4

    const-wide/16 p2, 0x0

    cmp-long p4, v4, p2

    if-ltz p4, :cond_4

    .line 3012
    sget-object p2, Lj$/time/format/j;->f:[J

    aget-wide p1, p2, p1

    int-to-long p3, v0

    .line 3013
    rem-long v8, p3, p1

    sub-long v8, p3, v8

    if-lez v0, :cond_2

    add-long/2addr v8, v4

    goto :goto_1

    :cond_2
    sub-long/2addr v8, v4

    :goto_1
    cmp-long p5, v8, p3

    if-gez p5, :cond_3

    add-long/2addr p1, v8

    move-wide p2, p1

    goto :goto_2

    :cond_3
    move-wide p2, v8

    goto :goto_2

    :cond_4
    move-wide p2, v4

    .line 3024
    :goto_2
    iget-object v4, v2, Lj$/time/format/j;->a:Lj$/time/temporal/p;

    move v8, v7

    move v7, v6

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Lj$/time/format/w;->g(Lj$/time/temporal/p;JII)I

    move-result p1

    return p1
.end method

.method public final d()Lj$/time/format/j;
    .locals 8

    .line 3034
    iget v0, p0, Lj$/time/format/j;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 3037
    :cond_0
    new-instance v2, Lj$/time/format/p;

    iget-object v6, p0, Lj$/time/format/p;->g:Lj$/time/chrono/b;

    const/4 v7, -0x1

    iget-object v3, p0, Lj$/time/format/j;->a:Lj$/time/temporal/p;

    iget v4, p0, Lj$/time/format/j;->b:I

    iget v5, p0, Lj$/time/format/j;->c:I

    invoke-direct/range {v2 .. v7}, Lj$/time/format/p;-><init>(Lj$/time/temporal/p;IILj$/time/chrono/b;I)V

    return-object v2
.end method

.method public final e(I)Lj$/time/format/j;
    .locals 6

    .line 3048
    new-instance v0, Lj$/time/format/p;

    iget v1, p0, Lj$/time/format/j;->e:I

    add-int v5, v1, p1

    iget-object v1, p0, Lj$/time/format/j;->a:Lj$/time/temporal/p;

    iget v2, p0, Lj$/time/format/j;->b:I

    iget v3, p0, Lj$/time/format/j;->c:I

    iget-object v4, p0, Lj$/time/format/p;->g:Lj$/time/chrono/b;

    invoke-direct/range {v0 .. v5}, Lj$/time/format/p;-><init>(Lj$/time/temporal/p;IILj$/time/chrono/b;I)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 3070
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lj$/time/format/p;->g:Lj$/time/chrono/b;

    invoke-static {v1, v0}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ReducedValue("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lj$/time/format/j;->a:Lj$/time/temporal/p;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lj$/time/format/j;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lj$/time/format/j;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
