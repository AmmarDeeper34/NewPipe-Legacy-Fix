.class public final enum Lj$/time/chrono/r;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/m;


# static fields
.field public static final enum AH:Lj$/time/chrono/r;

.field public static final synthetic a:[Lj$/time/chrono/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 95
    new-instance v0, Lj$/time/chrono/r;

    .line 89
    const-string v1, "AH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    sput-object v0, Lj$/time/chrono/r;->AH:Lj$/time/chrono/r;

    const/4 v1, 0x1

    .line 89
    new-array v1, v1, [Lj$/time/chrono/r;

    aput-object v0, v1, v2

    sput-object v1, Lj$/time/chrono/r;->a:[Lj$/time/chrono/r;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/chrono/r;
    .locals 1

    .line 89
    const-class v0, Lj$/time/chrono/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/chrono/r;

    return-object p0
.end method

.method public static values()[Lj$/time/chrono/r;
    .locals 1

    .line 89
    sget-object v0, Lj$/time/chrono/r;->a:[Lj$/time/chrono/r;

    invoke-virtual {v0}, [Lj$/time/chrono/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/chrono/r;

    return-object v0
.end method


# virtual methods
.method public final synthetic L(Lj$/time/temporal/p;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->g(Lj$/time/chrono/m;Lj$/time/temporal/p;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic Y(Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->m(Lj$/time/chrono/m;Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic e(Lj$/time/temporal/p;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->i(Lj$/time/chrono/m;Lj$/time/temporal/p;)Z

    move-result p1

    return p1
.end method

.method public final getValue()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic k(Lj$/time/temporal/p;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->f(Lj$/time/chrono/m;Lj$/time/temporal/p;)I

    move-result p1

    return p1
.end method

.method public final o(Lj$/time/temporal/p;)Lj$/time/temporal/s;
    .locals 2

    .line 155
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x1

    .line 156
    invoke-static {v0, v1, v0, v1}, Lj$/time/temporal/s;->f(JJ)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    .line 179
    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/q;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1
.end method

.method public final u(Lj$/time/temporal/l;)Lj$/time/temporal/l;
    .locals 3

    .line 301
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    const/4 v1, 0x1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/l;->c(JLj$/time/temporal/p;)Lj$/time/temporal/l;

    move-result-object p1

    return-object p1
.end method
