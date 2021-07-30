.class public final Ldwf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Lcqq;

.field public static final b:Ldwf;


# instance fields
.field public final c:Ljava/util/Map;

.field public final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcqq;

    .line 1
    const-string v1, ","

    invoke-direct {v0, v1}, Lcqq;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldwf;->a:Lcqq;

    new-instance v0, Ldwf;

    .line 2
    invoke-direct {v0}, Ldwf;-><init>()V

    new-instance v1, Ldvs;

    invoke-direct {v1}, Ldvs;-><init>()V

    .line 3
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ldwf;->a(Ldwd;Z)Ldwf;

    move-result-object v0

    sget-object v1, Ldvt;->a:Ldvu;

    .line 4
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ldwf;->a(Ldwd;Z)Ldwf;

    move-result-object v0

    sput-object v0, Ldwf;->b:Ldwf;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Ldwf;->c:Ljava/util/Map;

    new-array v0, v1, [B

    iput-object v0, p0, Ldwf;->d:[B

    return-void
.end method

.method private constructor <init>(Ldwd;ZLdwf;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-interface {p1}, Ldwd;->a()Ljava/lang/String;

    move-result-object v0

    .line 7
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Comma is currently not allowed in message encoding"

    invoke-static {v1, v2}, Lcrj;->a(ZLjava/lang/Object;)V

    iget-object v1, p3, Ldwf;->c:Ljava/util/Map;

    .line 8
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p3, Ldwf;->c:Ljava/util/Map;

    .line 9
    invoke-interface {p1}, Ldwd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 10
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object p3, p3, Ldwf;->c:Ljava/util/Map;

    .line 11
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldwe;

    .line 12
    iget-object v3, v1, Ldwe;->a:Ldwd;

    invoke-interface {v3}, Ldwd;->a()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ldwe;

    .line 14
    iget-object v5, v1, Ldwe;->a:Ldwd;

    iget-boolean v1, v1, Ldwe;->b:Z

    invoke-direct {v4, v5, v1}, Ldwe;-><init>(Ldwd;Z)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p3, Ldwe;

    .line 15
    invoke-direct {p3, p1, p2}, Ldwe;-><init>(Ldwd;Z)V

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ldwf;->c:Ljava/util/Map;

    sget-object p2, Ldwf;->a:Lcqq;

    new-instance p3, Ljava/util/HashSet;

    .line 17
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 18
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldwe;

    iget-boolean v1, v1, Ldwe;->b:Z

    if-eqz v1, :cond_3

    .line 20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_4
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Lcqq;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 23
    const-string p2, "US-ASCII"

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Ldwf;->d:[B

    return-void
.end method


# virtual methods
.method public final a(Ldwd;Z)Ldwf;
    .locals 1

    new-instance v0, Ldwf;

    .line 24
    invoke-direct {v0, p1, p2, p0}, Ldwf;-><init>(Ldwd;ZLdwf;)V

    return-object v0
.end method
