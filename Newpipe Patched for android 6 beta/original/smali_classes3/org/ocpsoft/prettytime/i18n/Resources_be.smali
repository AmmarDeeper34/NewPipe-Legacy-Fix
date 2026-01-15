.class public Lorg/ocpsoft/prettytime/i18n/Resources_be;
.super Ljava/util/ListResourceBundle;
.source "Resources_be.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;
    }
.end annotation


# static fields
.field private static final OBJECTS:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 20
    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aput v2, v0, v2

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_be;->OBJECTS:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 1

    .line 105
    sget-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_be;->OBJECTS:[[Ljava/lang/Object;

    return-object v0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 3

    .line 111
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/JustNow;

    if-eqz v0, :cond_0

    .line 112
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_be$1;

    invoke-direct {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_be$1;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_be;)V

    return-object p1

    .line 149
    :cond_0
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Century;

    if-eqz v0, :cond_1

    .line 150
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v0, "\u0441\u0442\u0430\u0433\u043e\u0434\u0434\u0437\u0456"

    const-string v1, "\u0441\u0442\u0430\u0433\u043e\u0434\u0434\u0437\u044f\u045e"

    const-string v2, "\u0441\u0442\u0430\u0433\u043e\u0434\u0434\u0437\u0435"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 152
    :cond_1
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Day;

    if-eqz v0, :cond_2

    .line 153
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v0, "\u0434\u043d\u0456"

    const-string v1, "\u0434\u0437\u0451\u043d"

    const-string v2, "\u0434\u0437\u0435\u043d\u044c"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 155
    :cond_2
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Decade;

    if-eqz v0, :cond_3

    .line 156
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v0, "\u0434\u0437\u0435\u0441\u044f\u0446\u0456\u0433\u043e\u0434\u0434\u0437\u0456"

    const-string v1, "\u0434\u0437\u0435\u0441\u044f\u0446\u0456\u0433\u043e\u0434\u0434\u0437\u044f\u045e"

    const-string v2, "\u0434\u0437\u0435\u0441\u044f\u0446\u0456\u0433\u043e\u0434\u0434\u0437\u0435"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 158
    :cond_3
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Hour;

    if-eqz v0, :cond_4

    .line 159
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v0, "\u0433\u0430\u0434\u0437\u0456\u043d\u044b"

    const-string v1, "\u0433\u0430\u0434\u0437\u0456\u043d"

    const-string v2, "\u0433\u0430\u0434\u0437\u0456\u043d\u0443"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 161
    :cond_4
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Millennium;

    if-eqz v0, :cond_5

    .line 162
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v0, "\u0442\u044b\u0441\u044f\u0447\u0430\u0433\u043e\u0434\u0434\u0437\u0456"

    const-string v1, "\u0442\u044b\u0441\u044f\u0447\u0430\u0433\u043e\u0434\u0434\u0437\u044f\u045e"

    const-string v2, "\u0442\u044b\u0441\u044f\u0447\u0430\u0433\u043e\u0434\u0434\u0437\u0435"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 164
    :cond_5
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Millisecond;

    if-eqz v0, :cond_6

    .line 165
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v0, "\u043c\u0456\u043b\u0456\u0441\u0435\u043a\u0443\u043d\u0434\u044b"

    const-string v1, "\u043c\u0456\u043b\u0456\u0441\u0435\u043a\u0443\u043d\u0434"

    const-string v2, "\u043c\u0456\u043b\u0456\u0441\u0435\u043a\u0443\u043d\u0434\u0443"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 167
    :cond_6
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Minute;

    if-eqz v0, :cond_7

    .line 168
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v0, "\u0445\u0432\u0456\u043b\u0456\u043d\u044b"

    const-string v1, "\u0445\u0432\u0456\u043b\u0456\u043d"

    const-string v2, "\u0445\u0432\u0456\u043b\u0456\u043d\u0443"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 170
    :cond_7
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Month;

    if-eqz v0, :cond_8

    .line 171
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v0, "\u043c\u0435\u0441\u044f\u0446\u044b"

    const-string v1, "\u043c\u0435\u0441\u044f\u0446\u0430\u045e"

    const-string v2, "\u043c\u0435\u0441\u044f\u0446"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 173
    :cond_8
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Second;

    if-eqz v0, :cond_9

    .line 174
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v0, "\u0441\u0435\u043a\u0443\u043d\u0434\u044b"

    const-string v1, "\u0441\u0435\u043a\u0443\u043d\u0434"

    const-string v2, "\u0441\u0435\u043a\u0443\u043d\u0434\u0443"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 176
    :cond_9
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Week;

    if-eqz v0, :cond_a

    .line 177
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v0, "\u0442\u044b\u0434\u043d\u0456"

    const-string v1, "\u0442\u044b\u0434\u043d\u044f\u045e"

    const-string v2, "\u0442\u044b\u0434\u0437\u0435\u043d\u044c"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 179
    :cond_a
    instance-of p1, p1, Lorg/ocpsoft/prettytime/units/Year;

    if-eqz p1, :cond_b

    .line 180
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v0, "\u0433\u0430\u0434\u044b"

    const-string v1, "\u0433\u0430\u0434\u043e\u045e"

    const-string v2, "\u0433\u043e\u0434"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method
