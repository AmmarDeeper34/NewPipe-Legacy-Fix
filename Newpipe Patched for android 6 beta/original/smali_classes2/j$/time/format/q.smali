.class public final enum Lj$/time/format/q;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/e;


# static fields
.field public static final enum INSENSITIVE:Lj$/time/format/q;

.field public static final enum LENIENT:Lj$/time/format/q;

.field public static final enum SENSITIVE:Lj$/time/format/q;

.field public static final enum STRICT:Lj$/time/format/q;

.field public static final synthetic a:[Lj$/time/format/q;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 2490
    new-instance v0, Lj$/time/format/q;

    .line 2489
    const-string v1, "SENSITIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2490
    sput-object v0, Lj$/time/format/q;->SENSITIVE:Lj$/time/format/q;

    .line 2491
    new-instance v1, Lj$/time/format/q;

    .line 2489
    const-string v3, "INSENSITIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2491
    sput-object v1, Lj$/time/format/q;->INSENSITIVE:Lj$/time/format/q;

    .line 2492
    new-instance v3, Lj$/time/format/q;

    .line 2489
    const-string v5, "STRICT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2492
    sput-object v3, Lj$/time/format/q;->STRICT:Lj$/time/format/q;

    .line 2493
    new-instance v5, Lj$/time/format/q;

    .line 2489
    const-string v7, "LENIENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2493
    sput-object v5, Lj$/time/format/q;->LENIENT:Lj$/time/format/q;

    const/4 v7, 0x4

    .line 2489
    new-array v7, v7, [Lj$/time/format/q;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lj$/time/format/q;->a:[Lj$/time/format/q;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/format/q;
    .locals 1

    .line 2489
    const-class v0, Lj$/time/format/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/format/q;

    return-object p0
.end method

.method public static values()[Lj$/time/format/q;
    .locals 1

    .line 2489
    sget-object v0, Lj$/time/format/q;->a:[Lj$/time/format/q;

    invoke-virtual {v0}, [Lj$/time/format/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/format/q;

    return-object v0
.end method


# virtual methods
.method public final k(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final n(Lj$/time/format/w;Ljava/lang/CharSequence;I)I
    .locals 3

    .line 2503
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    return p3

    .line 279
    :cond_0
    iput-boolean v1, p1, Lj$/time/format/w;->c:Z

    return p3

    .line 279
    :cond_1
    iput-boolean v0, p1, Lj$/time/format/w;->c:Z

    return p3

    .line 193
    :cond_2
    iput-boolean v1, p1, Lj$/time/format/w;->b:Z

    return p3

    .line 193
    :cond_3
    iput-boolean v0, p1, Lj$/time/format/w;->b:Z

    return p3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 2515
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2519
    const-string v0, "ParseStrict(false)"

    return-object v0

    .line 2521
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2518
    :cond_1
    const-string v0, "ParseStrict(true)"

    return-object v0

    .line 2517
    :cond_2
    const-string v0, "ParseCaseSensitive(false)"

    return-object v0

    .line 2516
    :cond_3
    const-string v0, "ParseCaseSensitive(true)"

    return-object v0
.end method
