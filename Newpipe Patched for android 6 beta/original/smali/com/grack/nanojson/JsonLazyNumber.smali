.class Lcom/grack/nanojson/JsonLazyNumber;
.super Ljava/lang/Number;


# instance fields
.field private isDouble:Z

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-object p1, p0, Lcom/grack/nanojson/JsonLazyNumber;->value:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/grack/nanojson/JsonLazyNumber;->isDouble:Z

    return-void
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/grack/nanojson/JsonLazyNumber;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/grack/nanojson/JsonLazyNumber;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/grack/nanojson/JsonLazyNumber;->isDouble:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grack/nanojson/JsonLazyNumber;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonLazyNumber;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/grack/nanojson/JsonLazyNumber;->isDouble:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grack/nanojson/JsonLazyNumber;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonLazyNumber;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
