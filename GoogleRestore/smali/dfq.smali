.class final Ldfq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Landroid/content/Intent;

.field private final b:Lbpl;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbpl;

    .line 1
    invoke-direct {v0}, Lbpl;-><init>()V

    iput-object v0, p0, Ldfq;->b:Lbpl;

    iput-object p1, p0, Ldfq;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method final a()Lbpi;
    .locals 1

    iget-object v0, p0, Ldfq;->b:Lbpl;

    iget-object v0, v0, Lbpl;->a:Lbpp;

    return-object v0
.end method

.method final b()V
    .locals 2

    iget-object v0, p0, Ldfq;->b:Lbpl;

    .line 2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbpl;->b(Ljava/lang/Object;)Z

    return-void
.end method
