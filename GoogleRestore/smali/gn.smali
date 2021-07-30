.class public Lgn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lgu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lgu;

    const/4 v1, 0x0

    check-cast v1, Lgu;

    invoke-direct {v0, v1}, Lgu;-><init>(Lgu;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgn;->a:Lgu;

    return-void
.end method


# virtual methods
.method public a()Lgu;
    .locals 1

    iget-object v0, p0, Lgn;->a:Lgu;

    return-object v0
.end method

.method public a(Ldz;)V
    .locals 0

    return-void
.end method

.method public b(Ldz;)V
    .locals 0

    return-void
.end method
