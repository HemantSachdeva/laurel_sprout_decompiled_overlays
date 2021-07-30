.class public final Lbvr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Leip;

.field private final b:Leip;

.field private final c:Leip;


# direct methods
.method public constructor <init>(Leip;Leip;Leip;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lbvr;->a(Ljava/lang/Object;I)V

    iput-object p1, p0, Lbvr;->a:Leip;

    .line 2
    const/4 p1, 0x2

    invoke-static {p2, p1}, Lbvr;->a(Ljava/lang/Object;I)V

    iput-object p2, p0, Lbvr;->b:Leip;

    .line 3
    const/4 p1, 0x3

    invoke-static {p3, p1}, Lbvr;->a(Ljava/lang/Object;I)V

    iput-object p3, p0, Lbvr;->c:Leip;

    return-void
.end method

.method private static a(Ljava/lang/Object;I)V
    .locals 2

    if-eqz p0, :cond_0

    .line 4
    return-void

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "@AutoFactory method argument is null but is not marked @Nullable. Argument index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Lcbh;)Lbvq;
    .locals 7

    new-instance v6, Lbvq;

    iget-object v1, p0, Lbvr;->a:Leip;

    iget-object v2, p0, Lbvr;->b:Leip;

    iget-object v0, p0, Lbvr;->c:Leip;

    .line 5
    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lbtr;

    const/4 v0, 0x3

    invoke-static {v3, v0}, Lbvr;->a(Ljava/lang/Object;I)V

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lbvr;->a(Ljava/lang/Object;I)V

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lbvr;->a(Ljava/lang/Object;I)V

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbvq;-><init>(Leip;Leip;Lbtr;Ljava/util/concurrent/Executor;Lcbh;)V

    return-object v6
.end method
