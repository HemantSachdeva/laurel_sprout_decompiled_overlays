.class final Ldht;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;


# instance fields
.field final synthetic a:Ldib;

.field private b:I

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldib;)V
    .locals 1

    iput-object p1, p0, Ldht;->a:Ldib;

    invoke-direct {p0}, Ldht;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldht;->b:I

    .line 1
    invoke-virtual {p1}, Ldib;->a()I

    move-result p1

    iput p1, p0, Ldht;->c:I

    return-void
.end method


# virtual methods
.method public a()B
    .locals 2

    iget v0, p0, Ldht;->b:I

    iget v1, p0, Ldht;->c:I

    if-ge v0, v1, :cond_0

    .line 2
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ldht;->b:I

    iget-object v1, p0, Ldht;->a:Ldib;

    .line 3
    invoke-virtual {v1, v0}, Ldib;->b(I)B

    move-result v0

    return v0

    .line 0
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$$CC;->forEachRemaining$$dflt$$(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Ldht;->b:I

    iget v1, p0, Ldht;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldht;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 4
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
