.class public final Lj$/time/format/a;
.super Lj$/time/format/b0;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lj$/time/format/a0;


# direct methods
.method public constructor <init>(Lj$/time/format/a0;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    iput-object p1, p0, Lj$/time/format/a;->d:Lj$/time/format/a0;

    return-void
.end method


# virtual methods
.method public final b(Lj$/time/chrono/l;Lj$/time/temporal/p;JLj$/time/format/g0;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 808
    iget-object p1, p0, Lj$/time/format/a;->d:Lj$/time/format/a0;

    invoke-virtual {p1, p3, p4, p5}, Lj$/time/format/a0;->a(JLj$/time/format/g0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lj$/time/temporal/p;JLj$/time/format/g0;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 812
    iget-object p1, p0, Lj$/time/format/a;->d:Lj$/time/format/a0;

    invoke-virtual {p1, p2, p3, p4}, Lj$/time/format/a0;->a(JLj$/time/format/g0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lj$/time/chrono/l;Lj$/time/temporal/p;Lj$/time/format/g0;Ljava/util/Locale;)Ljava/util/Iterator;
    .locals 0

    .line 817
    iget-object p1, p0, Lj$/time/format/a;->d:Lj$/time/format/a0;

    .line 669
    iget-object p1, p1, Lj$/time/format/a0;->b:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 670
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Lj$/time/temporal/p;Lj$/time/format/g0;Ljava/util/Locale;)Ljava/util/Iterator;
    .locals 0

    .line 822
    iget-object p1, p0, Lj$/time/format/a;->d:Lj$/time/format/a0;

    .line 669
    iget-object p1, p1, Lj$/time/format/a0;->b:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 670
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
