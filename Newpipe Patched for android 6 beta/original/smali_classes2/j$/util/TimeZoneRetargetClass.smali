.class public final synthetic Lj$/util/TimeZoneRetargetClass;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static toZoneId(Ljava/util/TimeZone;)Lj$/time/ZoneId;
    .locals 2

    .line 180
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    .line 190
    sget-object v0, Lj$/time/ZoneId;->a:Ljava/util/Map;

    .line 310
    const-string v1, "zoneId"

    invoke-static {p0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 311
    const-string v1, "aliasMap"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x1

    .line 357
    invoke-static {p0, v0}, Lj$/time/ZoneId;->b0(Ljava/lang/String;Z)Lj$/time/ZoneId;

    move-result-object p0

    return-object p0
.end method
