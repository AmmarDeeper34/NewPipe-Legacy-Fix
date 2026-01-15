.class public final Lj$/time/format/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/e;


# static fields
.field public static final c:Lj$/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:Lj$/time/format/FormatStyle;

.field public final b:Lj$/time/format/FormatStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4765
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lj$/time/format/i;->c:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lj$/time/format/FormatStyle;Lj$/time/format/FormatStyle;)V
    .locals 0

    .line 4776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4778
    iput-object p1, p0, Lj$/time/format/i;->a:Lj$/time/format/FormatStyle;

    .line 4779
    iput-object p2, p0, Lj$/time/format/i;->b:Lj$/time/format/FormatStyle;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Locale;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;
    .locals 11

    .line 4806
    invoke-interface {p2}, Lj$/time/chrono/l;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lj$/time/format/i;->a:Lj$/time/format/FormatStyle;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/format/i;->b:Lj$/time/format/FormatStyle;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4807
    sget-object v3, Lj$/time/format/i;->c:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj$/time/format/DateTimeFormatter;

    if-nez v4, :cond_10

    .line 210
    const-string v4, "locale"

    invoke-static {p1, v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    const-string v4, "chrono"

    invoke-static {p2, v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Either dateStyle or timeStyle must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 224
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {p2, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 226
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {p2, p1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    goto :goto_1

    .line 228
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {p2, v0, p1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    .line 230
    :goto_1
    instance-of v0, p2, Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_f

    .line 231
    check-cast p2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_4

    move-object p2, v0

    goto :goto_6

    :cond_4
    const/16 v4, 0x42

    .line 53
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    const/16 v8, 0x62

    .line 55
    invoke-virtual {p2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v6, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    if-nez v5, :cond_7

    if-eqz v6, :cond_d

    .line 78
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0x20

    const/16 v9, 0x20

    .line 80
    :goto_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_b

    .line 81
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v6, :cond_8

    if-eq v10, v4, :cond_a

    if-eq v10, v8, :cond_a

    .line 99
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    if-eqz v7, :cond_9

    if-eq v9, v4, :cond_a

    if-ne v9, v8, :cond_9

    goto :goto_5

    .line 95
    :cond_9
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move v9, v10

    goto :goto_4

    .line 107
    :cond_b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v1

    if-ltz p2, :cond_c

    .line 108
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_c

    .line 109
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 111
    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4810
    :cond_d
    :goto_6
    new-instance v4, Lj$/time/format/v;

    invoke-direct {v4}, Lj$/time/format/v;-><init>()V

    invoke-virtual {v4, p2}, Lj$/time/format/v;->i(Ljava/lang/String;)V

    .line 2224
    sget-object p2, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    invoke-virtual {v4, p1, p2, v0}, Lj$/time/format/v;->s(Ljava/util/Locale;Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    move-result-object p1

    .line 1543
    invoke-virtual {v3, v2, p1, v1}, Lj$/util/concurrent/ConcurrentHashMap;->f(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    .line 4811
    check-cast p2, Lj$/time/format/DateTimeFormatter;

    if-eqz p2, :cond_e

    return-object p2

    :cond_e
    return-object p1

    .line 236
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t determine pattern from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    return-object v4
.end method

.method public final k(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
    .locals 2

    .line 238
    iget-object v0, p1, Lj$/time/format/y;->a:Lj$/time/temporal/TemporalAccessor;

    .line 4784
    invoke-static {v0}, Lj$/com/android/tools/r8/a;->B(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;

    move-result-object v0

    .line 250
    iget-object v1, p1, Lj$/time/format/y;->b:Lj$/time/format/DateTimeFormatter;

    .line 1437
    iget-object v1, v1, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 4785
    invoke-virtual {p0, v1, v0}, Lj$/time/format/i;->a(Ljava/util/Locale;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatter;->d()Lj$/time/format/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lj$/time/format/d;->k(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final n(Lj$/time/format/w;Ljava/lang/CharSequence;I)I
    .locals 2

    .line 4790
    invoke-virtual {p1}, Lj$/time/format/w;->d()Lj$/time/chrono/l;

    move-result-object v0

    .line 147
    iget-object v1, p1, Lj$/time/format/w;->a:Lj$/time/format/DateTimeFormatter;

    .line 1437
    iget-object v1, v1, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 4791
    invoke-virtual {p0, v1, v0}, Lj$/time/format/i;->a(Ljava/util/Locale;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatter;->d()Lj$/time/format/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/format/d;->n(Lj$/time/format/w;Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 4821
    const-string v0, ""

    iget-object v1, p0, Lj$/time/format/i;->a:Lj$/time/format/FormatStyle;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 4822
    :goto_0
    iget-object v2, p0, Lj$/time/format/i;->b:Lj$/time/format/FormatStyle;

    if-eqz v2, :cond_1

    move-object v0, v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Localized("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
