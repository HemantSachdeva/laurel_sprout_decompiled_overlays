.class public abstract Lcsi;
.super Lcsd;
.source "PG"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Lj$/util/List;


# static fields
.field private static final a:Lctw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lctw;

    sget-object v1, Lcta;->a:Lcsi;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lctw;-><init>(Lcsi;I)V

    sput-object v0, Lcsi;->a:Lctw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcsd;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcsi;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 32
    invoke-static {v0}, Lcsi;->c([Ljava/lang/Object;)Lcsi;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Collection;)Lcsi;
    .locals 0

    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcsi;->c([Ljava/lang/Object;)Lcsi;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/Object;)Lcsi;
    .locals 1

    .line 16
    array-length v0, p0

    if-nez v0, :cond_0

    .line 17
    sget-object p0, Lcta;->a:Lcsi;

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcsi;->c([Ljava/lang/Object;)Lcsi;

    move-result-object p0

    .line 17
    :goto_0
    return-object p0
.end method

.method static b([Ljava/lang/Object;)Lcsi;
    .locals 1

    .line 5
    array-length v0, p0

    invoke-static {p0, v0}, Lcsi;->b([Ljava/lang/Object;I)Lcsi;

    move-result-object p0

    return-object p0
.end method

.method static b([Ljava/lang/Object;I)Lcsi;
    .locals 1

    if-nez p1, :cond_0

    .line 6
    sget-object p0, Lcta;->a:Lcsi;

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lcta;

    invoke-direct {v0, p0, p1}, Lcta;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method private static varargs c([Ljava/lang/Object;)Lcsi;
    .locals 3

    .line 9
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    aget-object v2, p0, v1

    invoke-static {v2, v1}, Lchi;->a(Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0}, Lcsi;->b([Ljava/lang/Object;)Lcsi;

    move-result-object p0

    return-object p0
.end method

.method public static f()Lcsi;
    .locals 1

    .line 31
    sget-object v0, Lcta;->a:Lcsi;

    return-object v0
.end method

.method public static h()Lcsf;
    .locals 1

    new-instance v0, Lcsf;

    .line 8
    invoke-direct {v0}, Lcsf;-><init>()V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 33
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a([Ljava/lang/Object;I)I
    .locals 4

    .line 13
    invoke-virtual {p0}, Lcsi;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p2, v1

    .line 14
    invoke-virtual {p0, v1}, Lcsi;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, v0

    return p2
.end method

.method public a(II)Lcsi;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcsi;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcrj;->a(III)V

    sub-int/2addr p2, p1

    .line 37
    invoke-virtual {p0}, Lcsi;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 39
    sget-object p1, Lcta;->a:Lcsi;

    return-object p1

    :cond_1
    new-instance v0, Lcsh;

    .line 38
    invoke-direct {v0, p0, p1, p2}, Lcsh;-><init>(Lcsi;II)V

    return-object v0
.end method

.method public final a()Lctv;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcsi;->g()Lctw;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lctw;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcsi;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcrj;->b(II)V

    .line 29
    invoke-virtual {p0}, Lcsi;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcsi;->a:Lctw;

    return-object p1

    .line 30
    :cond_0
    new-instance v0, Lctw;

    invoke-direct {v0, p0, p1}, Lctw;-><init>(Lcsi;I)V

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcsi;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lcsy;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g()Lctw;
    .locals 1

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcsi;->a(I)Lctw;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .line 20
    invoke-virtual {p0}, Lcsi;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 21
    invoke-virtual {p0, v2}, Lcsi;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 22
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 23
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    :goto_1
    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcsi;->g()Lctw;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 25
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 26
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    nop

    :goto_1
    return v0
.end method

.method public final bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lcsi;->g()Lctw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    invoke-virtual {p0, p1}, Lcsi;->a(I)Lctw;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 34
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final replaceAll(Lj$/util/function/UnaryOperator;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/List$$CC;->replaceAll$$dflt$$(Ljava/util/List;Lj$/util/function/UnaryOperator;)V

    return-void
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 35
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final sort(Ljava/util/Comparator;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/List$$CC;->sort$$dflt$$(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    invoke-static {p0}, Lj$/util/List$$CC;->spliterator$$dflt$$(Ljava/util/List;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcsi;->a(II)Lcsi;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcsg;

    .line 40
    invoke-virtual {p0}, Lcsd;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcsg;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
