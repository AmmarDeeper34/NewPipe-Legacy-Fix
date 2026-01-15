.class public abstract Lj$/time/temporal/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj$/desugar/sun/nio/fs/m;

.field public static final b:Lj$/desugar/sun/nio/fs/m;

.field public static final c:Lj$/desugar/sun/nio/fs/m;

.field public static final d:Lj$/desugar/sun/nio/fs/m;

.field public static final e:Lj$/desugar/sun/nio/fs/m;

.field public static final f:Lj$/desugar/sun/nio/fs/m;

.field public static final g:Lj$/desugar/sun/nio/fs/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 344
    new-instance v0, Lj$/desugar/sun/nio/fs/m;

    const/16 v1, 0x8

    .line 344
    invoke-direct {v0, v1}, Lj$/desugar/sun/nio/fs/m;-><init>(I)V

    .line 344
    sput-object v0, Lj$/time/temporal/q;->a:Lj$/desugar/sun/nio/fs/m;

    .line 359
    new-instance v0, Lj$/desugar/sun/nio/fs/m;

    const/16 v1, 0x9

    .line 359
    invoke-direct {v0, v1}, Lj$/desugar/sun/nio/fs/m;-><init>(I)V

    .line 359
    sput-object v0, Lj$/time/temporal/q;->b:Lj$/desugar/sun/nio/fs/m;

    .line 375
    new-instance v0, Lj$/desugar/sun/nio/fs/m;

    const/16 v1, 0xa

    .line 375
    invoke-direct {v0, v1}, Lj$/desugar/sun/nio/fs/m;-><init>(I)V

    .line 375
    sput-object v0, Lj$/time/temporal/q;->c:Lj$/desugar/sun/nio/fs/m;

    .line 391
    new-instance v0, Lj$/desugar/sun/nio/fs/m;

    const/16 v1, 0xb

    .line 391
    invoke-direct {v0, v1}, Lj$/desugar/sun/nio/fs/m;-><init>(I)V

    .line 391
    sput-object v0, Lj$/time/temporal/q;->d:Lj$/desugar/sun/nio/fs/m;

    .line 409
    new-instance v0, Lj$/desugar/sun/nio/fs/m;

    const/16 v1, 0xc

    .line 409
    invoke-direct {v0, v1}, Lj$/desugar/sun/nio/fs/m;-><init>(I)V

    .line 409
    sput-object v0, Lj$/time/temporal/q;->e:Lj$/desugar/sun/nio/fs/m;

    .line 425
    new-instance v0, Lj$/desugar/sun/nio/fs/m;

    const/16 v1, 0xd

    .line 425
    invoke-direct {v0, v1}, Lj$/desugar/sun/nio/fs/m;-><init>(I)V

    .line 425
    sput-object v0, Lj$/time/temporal/q;->f:Lj$/desugar/sun/nio/fs/m;

    .line 443
    new-instance v0, Lj$/desugar/sun/nio/fs/m;

    const/16 v1, 0xe

    .line 443
    invoke-direct {v0, v1}, Lj$/desugar/sun/nio/fs/m;-><init>(I)V

    .line 443
    sput-object v0, Lj$/time/temporal/q;->g:Lj$/desugar/sun/nio/fs/m;

    return-void
.end method

.method public static a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I
    .locals 5

    .line 218
    invoke-interface {p0, p1}, Lj$/time/temporal/TemporalAccessor;->o(Lj$/time/temporal/p;)Lj$/time/temporal/s;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lj$/time/temporal/s;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-interface {p0, p1}, Lj$/time/temporal/TemporalAccessor;->L(Lj$/time/temporal/p;)J

    move-result-wide v1

    .line 223
    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/s;->e(J)Z

    move-result p0

    if-eqz p0, :cond_0

    long-to-int p0, v1

    return p0

    .line 224
    :cond_0
    new-instance p0, Lj$/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid value for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (valid values "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 224
    throw p0

    .line 220
    :cond_1
    new-instance p0, Lj$/time/temporal/r;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid field "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for get() method, use getLong() instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 220
    throw p0
.end method

.method public static b(Lj$/time/temporal/l;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/l;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 370
    invoke-interface {p0, p1, p2, p3}, Lj$/time/temporal/l;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/l;

    move-result-object p0

    const-wide/16 p1, 0x1

    :goto_0
    invoke-interface {p0, p1, p2, p3}, Lj$/time/temporal/l;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/l;

    move-result-object p0

    return-object p0

    :cond_0
    neg-long p1, p1

    goto :goto_0
.end method

.method public static c(Lj$/time/temporal/TemporalAccessor;Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;
    .locals 1

    .line 309
    sget-object v0, Lj$/time/temporal/q;->a:Lj$/desugar/sun/nio/fs/m;

    if-eq p1, v0, :cond_1

    .line 310
    sget-object v0, Lj$/time/temporal/q;->b:Lj$/desugar/sun/nio/fs/m;

    if-eq p1, v0, :cond_1

    .line 311
    sget-object v0, Lj$/time/temporal/q;->c:Lj$/desugar/sun/nio/fs/m;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p1, p0}, Lj$/desugar/sun/nio/fs/m;->g(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)Lj$/time/temporal/s;
    .locals 1

    .line 170
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    .line 171
    invoke-interface {p0, p1}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/p;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 172
    check-cast p1, Lj$/time/temporal/a;

    .line 669
    iget-object p0, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    return-object p0

    .line 174
    :cond_0
    new-instance p0, Lj$/time/temporal/r;

    const-string v0, "Unsupported field: "

    .line 0
    invoke-static {v0, p1}, Lj$/time/b;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 174
    throw p0

    .line 176
    :cond_1
    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->n(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/s;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(I)I
    .locals 1

    .line 0
    rem-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    xor-int/lit8 p0, p0, 0x7

    shr-int/lit8 p0, p0, 0x1f

    or-int/lit8 p0, p0, 0x1

    if-lez p0, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x7

    return v0
.end method
