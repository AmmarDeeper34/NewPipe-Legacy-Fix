.class public Lorg/mozilla/javascript/Hashtable;
.super Ljava/lang/Object;
.source "Hashtable.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/Hashtable$Entry;,
        Lorg/mozilla/javascript/Hashtable$Iter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Lorg/mozilla/javascript/Hashtable$Entry;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x633f6d4d62777ac3L


# instance fields
.field private first:Lorg/mozilla/javascript/Hashtable$Entry;

.field private last:Lorg/mozilla/javascript/Hashtable$Entry;

.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lorg/mozilla/javascript/Hashtable$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$J_vqt9dpUHrjiCH0P4QMyATyKP4(Lorg/mozilla/javascript/Hashtable;Lorg/mozilla/javascript/Hashtable$Entry;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Hashtable$Entry;)Lorg/mozilla/javascript/Hashtable$Entry;
    .locals 0

    if-nez p4, :cond_1

    .line 131
    iget-object p2, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    if-nez p2, :cond_0

    .line 132
    iput-object p1, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object p1, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    return-object p1

    .line 134
    :cond_0
    iget-object p2, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object p1, p2, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 135
    iput-object p2, p1, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 136
    iput-object p1, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    return-object p1

    .line 0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    iput-object p2, p4, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    return-object p4
.end method

.method static bridge synthetic -$$Nest$smmakeDummy()Lorg/mozilla/javascript/Hashtable$Entry;
    .locals 1

    .line 0
    invoke-static {}, Lorg/mozilla/javascript/Hashtable;->makeDummy()Lorg/mozilla/javascript/Hashtable$Entry;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->map:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 33
    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    return-void
.end method

.method private static makeDummy()Lorg/mozilla/javascript/Hashtable$Entry;
    .locals 1

    .line 114
    new-instance v0, Lorg/mozilla/javascript/Hashtable$Entry;

    invoke-direct {v0}, Lorg/mozilla/javascript/Hashtable$Entry;-><init>()V

    .line 115
    invoke-virtual {v0}, Lorg/mozilla/javascript/Hashtable$Entry;->clear()V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 267
    invoke-virtual {p0}, Lorg/mozilla/javascript/Hashtable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 268
    new-instance v1, Lorg/mozilla/javascript/Hashtable$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/mozilla/javascript/Hashtable$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 274
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v0, :cond_0

    .line 275
    invoke-static {}, Lorg/mozilla/javascript/Hashtable;->makeDummy()Lorg/mozilla/javascript/Hashtable$Entry;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v0, v1, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 277
    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public delete(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    new-instance v0, Lorg/mozilla/javascript/Hashtable$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/mozilla/javascript/Hashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    iget-object p1, p0, Lorg/mozilla/javascript/Hashtable;->map:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Hashtable$Entry;

    if-nez p1, :cond_0

    return-object v1

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    if-ne p1, v0, :cond_2

    .line 192
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    if-ne p1, v0, :cond_1

    .line 195
    invoke-virtual {p1}, Lorg/mozilla/javascript/Hashtable$Entry;->clear()V

    .line 196
    iput-object v1, p1, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p1, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 199
    iput-object v1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 200
    iget-object v1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v1, :cond_4

    .line 201
    iput-object v0, v1, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    goto :goto_0

    .line 205
    :cond_2
    iget-object v0, p1, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 206
    iget-object v2, p1, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v2, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 207
    iput-object v1, p1, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 208
    iget-object v1, p1, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v1, :cond_3

    .line 209
    iput-object v0, v1, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    goto :goto_0

    .line 212
    :cond_3
    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 216
    :cond_4
    :goto_0
    iget-object v0, p1, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    .line 217
    invoke-virtual {p1}, Lorg/mozilla/javascript/Hashtable$Entry;->clear()V

    return-object v0
.end method

.method public deleteEntry(Ljava/lang/Object;)Z
    .locals 3

    .line 222
    new-instance v0, Lorg/mozilla/javascript/Hashtable$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/mozilla/javascript/Hashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    iget-object p1, p0, Lorg/mozilla/javascript/Hashtable;->map:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Hashtable$Entry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    if-ne p1, v0, :cond_2

    .line 237
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    if-ne p1, v0, :cond_1

    .line 240
    invoke-virtual {p1}, Lorg/mozilla/javascript/Hashtable$Entry;->clear()V

    .line 241
    iput-object v1, p1, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p1, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 244
    iput-object v1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 245
    iget-object v1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v1, :cond_4

    .line 246
    iput-object v0, v1, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p1, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 251
    iget-object v2, p1, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v2, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 252
    iput-object v1, p1, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 253
    iget-object v1, p1, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v1, :cond_3

    .line 254
    iput-object v0, v1, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    goto :goto_0

    .line 257
    :cond_3
    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 261
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Hashtable$Entry;->clear()V

    const/4 p1, 0x1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    new-instance v0, Lorg/mozilla/javascript/Hashtable$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/mozilla/javascript/Hashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    iget-object p1, p0, Lorg/mozilla/javascript/Hashtable;->map:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Hashtable$Entry;

    if-nez p1, :cond_0

    return-object v1

    .line 158
    :cond_0
    iget-object p1, p1, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public getEntry(Ljava/lang/Object;)Lorg/mozilla/javascript/Hashtable$Entry;
    .locals 2

    .line 162
    new-instance v0, Lorg/mozilla/javascript/Hashtable$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/mozilla/javascript/Hashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    iget-object p1, p0, Lorg/mozilla/javascript/Hashtable;->map:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Hashtable$Entry;

    return-object p1
.end method

.method public has(Ljava/lang/Object;)Z
    .locals 2

    .line 167
    new-instance v0, Lorg/mozilla/javascript/Hashtable$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/mozilla/javascript/Hashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    iget-object p1, p0, Lorg/mozilla/javascript/Hashtable;->map:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/mozilla/javascript/Hashtable$Entry;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Lorg/mozilla/javascript/Hashtable$Iter;

    iget-object v1, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Hashtable$Iter;-><init>(Lorg/mozilla/javascript/Hashtable$Entry;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 124
    new-instance v0, Lorg/mozilla/javascript/Hashtable$Entry;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/javascript/Hashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    iget-object p1, p0, Lorg/mozilla/javascript/Hashtable;->map:Ljava/util/HashMap;

    new-instance v1, Lorg/mozilla/javascript/Hashtable$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p2}, Lorg/mozilla/javascript/Hashtable$$ExternalSyntheticLambda1;-><init>(Lorg/mozilla/javascript/Hashtable;Lorg/mozilla/javascript/Hashtable$Entry;Ljava/lang/Object;)V

    invoke-static {p1, v0, v1}, Lj$/util/Map$-EL;->compute(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
