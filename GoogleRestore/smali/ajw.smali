.class public final Lajw;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Lajv;

.field public c:Lbpa;

.field public d:Lbpa;

.field private final e:Lj$/util/function/Supplier;


# direct methods
.method private constructor <init>(Lj$/util/function/Supplier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lajw;->a:I

    .line 1
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lajw;->e:Lj$/util/function/Supplier;

    return-void
.end method

.method public static a(Lj$/util/function/Supplier;)Lajw;
    .locals 1

    new-instance v0, Lajw;

    .line 2
    invoke-direct {v0, p0}, Lajw;-><init>(Lj$/util/function/Supplier;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lajw;->a(I)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lajw;->e:Lj$/util/function/Supplier;

    .line 3
    invoke-interface {v0}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpi;

    new-instance v1, Lajt;

    invoke-direct {v1, p0, p1}, Lajt;-><init>(Lajw;I)V

    .line 4
    invoke-virtual {v0, v1}, Lbpi;->a(Lbpd;)V

    new-instance v1, Laju;

    invoke-direct {v1, p0, p1}, Laju;-><init>(Lajw;I)V

    .line 5
    invoke-virtual {v0, v1}, Lbpi;->a(Lbpa;)V

    return-void
.end method
