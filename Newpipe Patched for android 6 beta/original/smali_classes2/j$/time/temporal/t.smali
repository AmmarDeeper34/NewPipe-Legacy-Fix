.class public final Lj$/time/temporal/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/p;


# static fields
.field public static final f:Lj$/time/temporal/s;

.field public static final g:Lj$/time/temporal/s;

.field public static final h:Lj$/time/temporal/s;

.field public static final i:Lj$/time/temporal/s;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lj$/time/temporal/u;

.field public final c:Lj$/time/temporal/TemporalUnit;

.field public final d:Lj$/time/temporal/TemporalUnit;

.field public final e:Lj$/time/temporal/s;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x7

    .line 768
    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/s;->f(JJ)Lj$/time/temporal/s;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/t;->f:Lj$/time/temporal/s;

    const-wide/16 v3, 0x4

    const-wide/16 v5, 0x6

    const-wide/16 v1, 0x0

    .line 769
    invoke-static/range {v1 .. v6}, Lj$/time/temporal/s;->g(JJJ)Lj$/time/temporal/s;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/t;->g:Lj$/time/temporal/s;

    const-wide/16 v3, 0x34

    const-wide/16 v5, 0x36

    .line 770
    invoke-static/range {v1 .. v6}, Lj$/time/temporal/s;->g(JJJ)Lj$/time/temporal/s;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/t;->h:Lj$/time/temporal/s;

    const-wide/16 v5, 0x35

    const-wide/16 v1, 0x1

    .line 147
    invoke-static/range {v1 .. v6}, Lj$/time/temporal/s;->g(JJJ)Lj$/time/temporal/s;

    move-result-object v0

    .line 771
    sput-object v0, Lj$/time/temporal/t;->i:Lj$/time/temporal/s;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lj$/time/temporal/u;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/s;)V
    .locals 0

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iput-object p1, p0, Lj$/time/temporal/t;->a:Ljava/lang/String;

    .line 762
    iput-object p2, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    .line 763
    iput-object p3, p0, Lj$/time/temporal/t;->c:Lj$/time/temporal/TemporalUnit;

    .line 764
    iput-object p4, p0, Lj$/time/temporal/t;->d:Lj$/time/temporal/TemporalUnit;

    .line 765
    iput-object p5, p0, Lj$/time/temporal/t;->e:Lj$/time/temporal/s;

    return-void
.end method

.method public static a(II)I
    .locals 0

    add-int/lit8 p0, p0, 0x7

    add-int/lit8 p1, p1, -0x1

    add-int/2addr p1, p0

    .line 904
    div-int/lit8 p1, p1, 0x7

    return p1
.end method


# virtual methods
.method public final G(Lj$/time/temporal/TemporalAccessor;)J
    .locals 3

    .line 775
    sget-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    iget-object v1, p0, Lj$/time/temporal/t;->d:Lj$/time/temporal/TemporalUnit;

    if-ne v1, v0, :cond_0

    .line 776
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result p1

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 777
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_1

    .line 802
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 803
    sget-object v1, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result p1

    .line 804
    invoke-virtual {p0, p1, v0}, Lj$/time/temporal/t;->h(II)I

    move-result v0

    .line 805
    invoke-static {v0, p1}, Lj$/time/temporal/t;->a(II)I

    move-result p1

    goto :goto_0

    .line 779
    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_2

    .line 809
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 810
    sget-object v1, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result p1

    .line 811
    invoke-virtual {p0, p1, v0}, Lj$/time/temporal/t;->h(II)I

    move-result v0

    .line 812
    invoke-static {v0, p1}, Lj$/time/temporal/t;->a(II)I

    move-result p1

    goto :goto_0

    .line 781
    :cond_2
    sget-object v0, Lj$/time/temporal/u;->h:Lj$/time/temporal/h;

    if-ne v1, v0, :cond_3

    .line 782
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->d(Lj$/time/temporal/TemporalAccessor;)I

    move-result p1

    goto :goto_0

    .line 783
    :cond_3
    sget-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_4

    .line 784
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->c(Lj$/time/temporal/TemporalAccessor;)I

    move-result p1

    goto :goto_0

    .line 786
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unreachable, rangeUnit: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final L(Lj$/time/temporal/l;J)Lj$/time/temporal/l;
    .locals 4

    .line 911
    iget-object v0, p0, Lj$/time/temporal/t;->e:Lj$/time/temporal/s;

    invoke-virtual {v0, p2, p3, p0}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    move-result v0

    .line 912
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 917
    :cond_0
    iget-object v2, p0, Lj$/time/temporal/t;->d:Lj$/time/temporal/TemporalUnit;

    sget-object v3, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_1

    .line 0
    iget-object v0, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    iget-object v1, v0, Lj$/time/temporal/u;->c:Lj$/time/temporal/t;

    .line 920
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result v1

    .line 0
    iget-object v0, v0, Lj$/time/temporal/u;->e:Lj$/time/temporal/t;

    .line 921
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result v0

    .line 922
    invoke-static {p1}, Lj$/com/android/tools/r8/a;->B(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;

    move-result-object p1

    long-to-int p3, p2

    invoke-virtual {p0, p1, p3, v0, v1}, Lj$/time/temporal/t;->e(Lj$/time/chrono/l;III)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1

    :cond_1
    sub-int/2addr v0, v1

    int-to-long p2, v0

    .line 925
    iget-object v0, p0, Lj$/time/temporal/t;->c:Lj$/time/temporal/TemporalUnit;

    invoke-interface {p1, p2, p3, v0}, Lj$/time/temporal/l;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/l;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lj$/time/temporal/TemporalAccessor;)I
    .locals 2

    .line 791
    iget-object v0, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    .line 407
    iget-object v0, v0, Lj$/time/temporal/u;->a:Lj$/time/c;

    .line 791
    invoke-virtual {v0}, Lj$/time/c;->getValue()I

    move-result v0

    .line 792
    sget-object v1, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result p1

    sub-int/2addr p1, v0

    .line 793
    invoke-static {p1}, Lj$/time/temporal/q;->e(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final c(Lj$/time/temporal/TemporalAccessor;)I
    .locals 6

    .line 822
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 823
    sget-object v1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result v1

    .line 824
    sget-object v2, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result v3

    .line 825
    invoke-virtual {p0, v3, v0}, Lj$/time/temporal/t;->h(II)I

    move-result v0

    .line 826
    invoke-static {v0, v3}, Lj$/time/temporal/t;->a(II)I

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 833
    :cond_0
    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->o(Lj$/time/temporal/p;)Lj$/time/temporal/s;

    move-result-object p1

    .line 253
    iget-wide v4, p1, Lj$/time/temporal/s;->d:J

    long-to-int p1, v4

    .line 835
    iget-object v2, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    .line 421
    iget v2, v2, Lj$/time/temporal/u;->b:I

    add-int/2addr p1, v2

    .line 835
    invoke-static {v0, p1}, Lj$/time/temporal/t;->a(II)I

    move-result p1

    if-lt v3, p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    return v1
.end method

.method public final d(Lj$/time/temporal/TemporalAccessor;)I
    .locals 4

    .line 853
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 854
    sget-object v1, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result v2

    .line 855
    invoke-virtual {p0, v2, v0}, Lj$/time/temporal/t;->h(II)I

    move-result v0

    .line 856
    invoke-static {v0, v2}, Lj$/time/temporal/t;->a(II)I

    move-result v3

    if-nez v3, :cond_0

    .line 860
    invoke-static {p1}, Lj$/com/android/tools/r8/a;->B(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/l;->I(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/b;

    move-result-object p1

    int-to-long v0, v2

    .line 861
    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/chrono/b;->z(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    .line 862
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->d(Lj$/time/temporal/TemporalAccessor;)I

    move-result p1

    return p1

    :cond_0
    const/16 v2, 0x32

    if-le v3, v2, :cond_1

    .line 866
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->o(Lj$/time/temporal/p;)Lj$/time/temporal/s;

    move-result-object p1

    .line 253
    iget-wide v1, p1, Lj$/time/temporal/s;->d:J

    long-to-int p1, v1

    .line 868
    iget-object v1, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    .line 421
    iget v1, v1, Lj$/time/temporal/u;->b:I

    add-int/2addr p1, v1

    .line 868
    invoke-static {v0, p1}, Lj$/time/temporal/t;->a(II)I

    move-result p1

    if-lt v3, p1, :cond_1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    return v3
.end method

.method public final e(Lj$/time/chrono/l;III)Lj$/time/chrono/b;
    .locals 3

    const/4 v0, 0x1

    .line 741
    invoke-interface {p1, p2, v0, v0}, Lj$/time/chrono/l;->R(III)Lj$/time/chrono/b;

    move-result-object p1

    .line 742
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result p2

    .line 743
    invoke-virtual {p0, v0, p2}, Lj$/time/temporal/t;->h(II)I

    move-result p2

    .line 746
    invoke-interface {p1}, Lj$/time/chrono/b;->V()I

    move-result v1

    .line 747
    iget-object v2, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    .line 421
    iget v2, v2, Lj$/time/temporal/u;->b:I

    add-int/2addr v1, v2

    .line 747
    invoke-static {p2, v1}, Lj$/time/temporal/t;->a(II)I

    move-result v1

    sub-int/2addr v1, v0

    .line 748
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    neg-int p2, p2

    sub-int/2addr p4, v0

    add-int/2addr p4, p2

    sub-int/2addr p3, v0

    mul-int/lit8 p3, p3, 0x7

    add-int/2addr p3, p4

    int-to-long p2, p3

    .line 751
    sget-object p4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, p2, p3, p4}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/a;)Lj$/time/temporal/s;
    .locals 3

    .line 1128
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 1129
    invoke-interface {p1, p2}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lj$/time/temporal/t;->h(II)I

    move-result v0

    .line 1130
    invoke-interface {p1, p2}, Lj$/time/temporal/TemporalAccessor;->o(Lj$/time/temporal/p;)Lj$/time/temporal/s;

    move-result-object p1

    .line 217
    iget-wide v1, p1, Lj$/time/temporal/s;->a:J

    long-to-int p2, v1

    .line 1131
    invoke-static {v0, p2}, Lj$/time/temporal/t;->a(II)I

    move-result p2

    int-to-long v1, p2

    .line 253
    iget-wide p1, p1, Lj$/time/temporal/s;->d:J

    long-to-int p2, p1

    .line 1132
    invoke-static {v0, p2}, Lj$/time/temporal/t;->a(II)I

    move-result p1

    int-to-long p1, p1

    .line 1131
    invoke-static {v1, v2, p1, p2}, Lj$/time/temporal/s;->f(JJ)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/s;
    .locals 6

    .line 1141
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/p;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1142
    sget-object p1, Lj$/time/temporal/t;->h:Lj$/time/temporal/s;

    return-object p1

    .line 1144
    :cond_0
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v1

    .line 1145
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result v2

    .line 1146
    invoke-virtual {p0, v2, v1}, Lj$/time/temporal/t;->h(II)I

    move-result v1

    .line 1147
    invoke-static {v1, v2}, Lj$/time/temporal/t;->a(II)I

    move-result v3

    if-nez v3, :cond_1

    .line 1151
    invoke-static {p1}, Lj$/com/android/tools/r8/a;->B(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/l;->I(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/b;

    move-result-object p1

    add-int/lit8 v2, v2, 0x7

    int-to-long v0, v2

    .line 1152
    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/chrono/b;->z(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    .line 1153
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->g(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    .line 1156
    :cond_1
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->o(Lj$/time/temporal/p;)Lj$/time/temporal/s;

    move-result-object v0

    .line 253
    iget-wide v4, v0, Lj$/time/temporal/s;->d:J

    long-to-int v0, v4

    .line 1158
    iget-object v4, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    .line 421
    iget v4, v4, Lj$/time/temporal/u;->b:I

    add-int/2addr v4, v0

    .line 1158
    invoke-static {v1, v4}, Lj$/time/temporal/t;->a(II)I

    move-result v1

    if-lt v3, v1, :cond_2

    .line 1162
    invoke-static {p1}, Lj$/com/android/tools/r8/a;->B(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;

    move-result-object v1

    invoke-interface {v1, p1}, Lj$/time/chrono/l;->I(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/b;

    move-result-object p1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    .line 1163
    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    .line 1164
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->g(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    int-to-long v0, v1

    const-wide/16 v2, 0x1

    .line 1166
    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/s;->f(JJ)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1
.end method

.method public final h(II)I
    .locals 2

    sub-int/2addr p1, p2

    .line 886
    invoke-static {p1}, Lj$/time/temporal/q;->e(I)I

    move-result p1

    neg-int p2, p1

    add-int/lit8 v0, p1, 0x1

    .line 888
    iget-object v1, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    .line 421
    iget v1, v1, Lj$/time/temporal/u;->b:I

    if-le v0, v1, :cond_0

    rsub-int/lit8 p1, p1, 0x7

    return p1

    :cond_0
    return p2
.end method

.method public final isDateBased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 2

    .line 1088
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/p;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1089
    sget-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    iget-object v1, p0, Lj$/time/temporal/t;->d:Lj$/time/temporal/TemporalUnit;

    if-ne v1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1091
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_1

    .line 1092
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/p;)Z

    move-result p1

    return p1

    .line 1093
    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_2

    .line 1094
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/p;)Z

    move-result p1

    return p1

    .line 1095
    :cond_2
    sget-object v0, Lj$/time/temporal/u;->h:Lj$/time/temporal/h;

    if-ne v1, v0, :cond_3

    .line 1096
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/p;)Z

    move-result p1

    return p1

    .line 1097
    :cond_3
    sget-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_4

    .line 1098
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/p;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final n(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/s;
    .locals 3

    .line 1106
    sget-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    iget-object v1, p0, Lj$/time/temporal/t;->d:Lj$/time/temporal/TemporalUnit;

    if-ne v1, v0, :cond_0

    .line 1107
    iget-object p1, p0, Lj$/time/temporal/t;->e:Lj$/time/temporal/s;

    return-object p1

    .line 1108
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_1

    .line 1109
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-virtual {p0, p1, v0}, Lj$/time/temporal/t;->f(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/a;)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    .line 1110
    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_2

    .line 1111
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {p0, p1, v0}, Lj$/time/temporal/t;->f(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/a;)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    .line 1112
    :cond_2
    sget-object v0, Lj$/time/temporal/u;->h:Lj$/time/temporal/h;

    if-ne v1, v0, :cond_3

    .line 1113
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->g(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    .line 1114
    :cond_3
    sget-object p1, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v1, p1, :cond_4

    .line 1115
    sget-object p1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 669
    iget-object p1, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    return-object p1

    .line 1117
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unreachable, rangeUnit: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Ljava/util/Map;Lj$/time/format/d0;Lj$/time/format/e0;)Lj$/time/temporal/TemporalAccessor;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 932
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 933
    invoke-static {v3, v4}, Lj$/com/android/tools/r8/a;->D(J)I

    move-result v5

    .line 937
    sget-object v6, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    const/4 v7, 0x0

    iget-object v8, v0, Lj$/time/temporal/t;->e:Lj$/time/temporal/s;

    iget-object v9, v0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    const/4 v10, 0x1

    iget-object v11, v0, Lj$/time/temporal/t;->d:Lj$/time/temporal/TemporalUnit;

    if-ne v11, v6, :cond_0

    .line 938
    invoke-virtual {v8, v3, v4, v0}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    move-result v2

    .line 407
    iget-object v3, v9, Lj$/time/temporal/u;->a:Lj$/time/c;

    .line 939
    invoke-virtual {v3}, Lj$/time/c;->getValue()I

    move-result v3

    sub-int/2addr v3, v10

    sub-int/2addr v2, v10

    add-int/2addr v2, v3

    .line 940
    invoke-static {v2}, Lj$/time/temporal/q;->e(I)I

    move-result v2

    add-int/2addr v2, v10

    int-to-long v2, v2

    .line 941
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    sget-object v4, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v7

    .line 947
    :cond_0
    sget-object v3, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v15, v7

    goto/16 :goto_6

    .line 950
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 669
    iget-object v4, v3, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    .line 732
    invoke-virtual {v4, v12, v13, v3}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    move-result v4

    .line 407
    iget-object v12, v9, Lj$/time/temporal/u;->a:Lj$/time/c;

    .line 797
    invoke-virtual {v12}, Lj$/time/c;->getValue()I

    move-result v12

    sub-int/2addr v4, v12

    .line 798
    invoke-static {v4}, Lj$/time/temporal/q;->e(I)I

    move-result v4

    add-int/2addr v4, v10

    .line 954
    invoke-static/range {p2 .. p2}, Lj$/com/android/tools/r8/a;->B(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;

    move-result-object v12

    .line 955
    sget-object v13, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    move-object v15, v7

    move-object/from16 v16, v8

    if-eqz v14, :cond_9

    .line 956
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 669
    iget-object v6, v13, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    .line 732
    invoke-virtual {v6, v7, v8, v13}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    move-result v6

    .line 957
    sget-object v7, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne v11, v7, :cond_5

    sget-object v9, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 958
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v17, v9

    int-to-long v8, v5

    .line 975
    sget-object v5, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    if-ne v2, v5, :cond_2

    .line 976
    invoke-interface {v12, v6, v10, v10}, Lj$/time/chrono/l;->R(III)Lj$/time/chrono/b;

    move-result-object v2

    const-wide/16 v5, 0x1

    invoke-static {v14, v15, v5, v6}, Lj$/com/android/tools/r8/a;->U(JJ)J

    move-result-wide v5

    invoke-interface {v2, v5, v6, v7}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object v2

    .line 802
    invoke-virtual {v0, v2}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v5

    .line 803
    sget-object v6, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {v2, v6}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result v6

    .line 804
    invoke-virtual {v0, v6, v5}, Lj$/time/temporal/t;->h(II)I

    move-result v5

    .line 805
    invoke-static {v5, v6}, Lj$/time/temporal/t;->a(II)I

    move-result v5

    int-to-long v5, v5

    .line 977
    invoke-static {v8, v9, v5, v6}, Lj$/com/android/tools/r8/a;->U(JJ)J

    move-result-wide v5

    .line 978
    invoke-virtual {v0, v2}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v7

    sub-int/2addr v4, v7

    const/4 v7, 0x7

    int-to-long v7, v7

    .line 0
    invoke-static {v5, v6, v7, v8}, Lj$/com/android/tools/r8/a;->T(JJ)J

    move-result-wide v5

    int-to-long v7, v4

    .line 979
    invoke-static {v5, v6, v7, v8}, Lj$/com/android/tools/r8/a;->S(JJ)J

    move-result-wide v4

    sget-object v6, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v2, v4, v5, v6}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object v2

    move-object/from16 v5, v17

    goto :goto_1

    :cond_2
    move-object/from16 v5, v17

    .line 669
    iget-object v7, v5, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    .line 732
    invoke-virtual {v7, v14, v15, v5}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    move-result v7

    .line 982
    invoke-interface {v12, v6, v7, v10}, Lj$/time/chrono/l;->R(III)Lj$/time/chrono/b;

    move-result-object v6

    move-object/from16 v7, v16

    .line 983
    invoke-virtual {v7, v8, v9, v0}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    move-result v7

    int-to-long v7, v7

    .line 802
    invoke-virtual {v0, v6}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v9

    .line 803
    sget-object v10, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {v6, v10}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result v10

    .line 804
    invoke-virtual {v0, v10, v9}, Lj$/time/temporal/t;->h(II)I

    move-result v9

    .line 805
    invoke-static {v9, v10}, Lj$/time/temporal/t;->a(II)I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v7, v9

    long-to-int v8, v7

    .line 985
    invoke-virtual {v0, v6}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v7

    sub-int/2addr v4, v7

    const/4 v7, 0x7

    mul-int/lit8 v8, v8, 0x7

    add-int/2addr v8, v4

    int-to-long v7, v8

    .line 986
    sget-object v4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v6, v7, v8, v4}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object v4

    .line 987
    sget-object v6, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    if-ne v2, v6, :cond_4

    invoke-interface {v4, v5}, Lj$/time/temporal/TemporalAccessor;->L(Lj$/time/temporal/p;)J

    move-result-wide v6

    cmp-long v2, v6, v14

    if-nez v2, :cond_3

    goto :goto_0

    .line 988
    :cond_3
    new-instance v1, Lj$/time/DateTimeException;

    const-string v2, "Strict mode rejected resolved date as it is in a different month"

    .line 88
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 988
    throw v1

    :cond_4
    :goto_0
    move-object v2, v4

    .line 991
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    invoke-interface {v1, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_5
    move-object/from16 v7, v16

    .line 961
    sget-object v8, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v11, v8, :cond_e

    int-to-long v8, v5

    .line 1000
    invoke-interface {v12, v6, v10, v10}, Lj$/time/chrono/l;->R(III)Lj$/time/chrono/b;

    move-result-object v5

    .line 1001
    sget-object v10, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    if-ne v2, v10, :cond_6

    .line 809
    invoke-virtual {v0, v5}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v2

    .line 810
    sget-object v6, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {v5, v6}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result v6

    .line 811
    invoke-virtual {v0, v6, v2}, Lj$/time/temporal/t;->h(II)I

    move-result v2

    .line 812
    invoke-static {v2, v6}, Lj$/time/temporal/t;->a(II)I

    move-result v2

    int-to-long v6, v2

    .line 1002
    invoke-static {v8, v9, v6, v7}, Lj$/com/android/tools/r8/a;->U(JJ)J

    move-result-wide v6

    .line 1003
    invoke-virtual {v0, v5}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v2

    sub-int/2addr v4, v2

    const/4 v2, 0x7

    int-to-long v8, v2

    .line 0
    invoke-static {v6, v7, v8, v9}, Lj$/com/android/tools/r8/a;->T(JJ)J

    move-result-wide v6

    int-to-long v8, v4

    .line 1004
    invoke-static {v6, v7, v8, v9}, Lj$/com/android/tools/r8/a;->S(JJ)J

    move-result-wide v6

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v5, v6, v7, v2}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object v2

    goto :goto_3

    .line 1006
    :cond_6
    invoke-virtual {v7, v8, v9, v0}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    move-result v7

    int-to-long v7, v7

    .line 809
    invoke-virtual {v0, v5}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v9

    .line 810
    sget-object v10, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {v5, v10}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result v10

    .line 811
    invoke-virtual {v0, v10, v9}, Lj$/time/temporal/t;->h(II)I

    move-result v9

    .line 812
    invoke-static {v9, v10}, Lj$/time/temporal/t;->a(II)I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v7, v9

    long-to-int v8, v7

    .line 1008
    invoke-virtual {v0, v5}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v7

    sub-int/2addr v4, v7

    const/4 v7, 0x7

    mul-int/lit8 v8, v8, 0x7

    add-int/2addr v8, v4

    int-to-long v7, v8

    .line 1009
    sget-object v4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v5, v7, v8, v4}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object v4

    .line 1010
    sget-object v5, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    if-ne v2, v5, :cond_8

    invoke-interface {v4, v13}, Lj$/time/temporal/TemporalAccessor;->L(Lj$/time/temporal/p;)J

    move-result-wide v7

    int-to-long v5, v6

    cmp-long v2, v7, v5

    if-nez v2, :cond_7

    goto :goto_2

    .line 1011
    :cond_7
    new-instance v1, Lj$/time/DateTimeException;

    const-string v2, "Strict mode rejected resolved date as it is in a different year"

    .line 88
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1011
    throw v1

    :cond_8
    :goto_2
    move-object v2, v4

    .line 1014
    :goto_3
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    invoke-interface {v1, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    .line 964
    :cond_9
    sget-object v5, Lj$/time/temporal/u;->h:Lj$/time/temporal/h;

    if-eq v11, v5, :cond_a

    sget-object v5, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v11, v5, :cond_e

    .line 0
    :cond_a
    iget-object v5, v9, Lj$/time/temporal/u;->f:Lj$/time/temporal/t;

    .line 965
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 0
    iget-object v5, v9, Lj$/time/temporal/u;->e:Lj$/time/temporal/t;

    .line 966
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 0
    iget-object v5, v9, Lj$/time/temporal/u;->f:Lj$/time/temporal/t;

    .line 1082
    iget-object v7, v5, Lj$/time/temporal/t;->e:Lj$/time/temporal/s;

    .line 1023
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 0
    iget-object v5, v9, Lj$/time/temporal/u;->f:Lj$/time/temporal/t;

    .line 1022
    invoke-virtual {v7, v13, v14, v5}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    move-result v5

    .line 1025
    sget-object v7, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    if-ne v2, v7, :cond_b

    .line 1026
    invoke-virtual {v0, v12, v5, v10, v4}, Lj$/time/temporal/t;->e(Lj$/time/chrono/l;III)Lj$/time/chrono/b;

    move-result-object v2

    .line 0
    iget-object v4, v9, Lj$/time/temporal/u;->e:Lj$/time/temporal/t;

    .line 1027
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v7, 0x1

    .line 1028
    invoke-static {v4, v5, v7, v8}, Lj$/com/android/tools/r8/a;->U(JJ)J

    move-result-wide v4

    .line 1029
    invoke-interface {v2, v4, v5, v6}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object v2

    goto :goto_5

    .line 0
    :cond_b
    iget-object v6, v9, Lj$/time/temporal/u;->e:Lj$/time/temporal/t;

    .line 1082
    iget-object v7, v6, Lj$/time/temporal/t;->e:Lj$/time/temporal/s;

    .line 1032
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 0
    iget-object v6, v9, Lj$/time/temporal/u;->e:Lj$/time/temporal/t;

    .line 1031
    invoke-virtual {v7, v10, v11, v6}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    move-result v6

    .line 1033
    invoke-virtual {v0, v12, v5, v6, v4}, Lj$/time/temporal/t;->e(Lj$/time/chrono/l;III)Lj$/time/chrono/b;

    move-result-object v4

    .line 1034
    sget-object v6, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    if-ne v2, v6, :cond_d

    invoke-virtual {v0, v4}, Lj$/time/temporal/t;->c(Lj$/time/temporal/TemporalAccessor;)I

    move-result v2

    if-ne v2, v5, :cond_c

    goto :goto_4

    .line 1035
    :cond_c
    new-instance v1, Lj$/time/DateTimeException;

    const-string v2, "Strict mode rejected resolved date as it is in a different week-based-year"

    .line 88
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1035
    throw v1

    :cond_d
    :goto_4
    move-object v2, v4

    .line 1038
    :goto_5
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    iget-object v4, v9, Lj$/time/temporal/u;->f:Lj$/time/temporal/t;

    .line 1039
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    iget-object v4, v9, Lj$/time/temporal/u;->e:Lj$/time/temporal/t;

    .line 1040
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_e
    :goto_6
    return-object v15
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1172
    iget-object v0, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    invoke-virtual {v0}, Lj$/time/temporal/u;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lj$/time/temporal/t;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lj$/time/temporal/s;
    .locals 1

    .line 1082
    iget-object v0, p0, Lj$/time/temporal/t;->e:Lj$/time/temporal/s;

    return-object v0
.end method
