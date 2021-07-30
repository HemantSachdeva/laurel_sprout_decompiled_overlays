.class final Ledx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leen;


# direct methods
.method public constructor <init>(Leen;)V
    .locals 0

    iput-object p1, p0, Ledx;->a:Leen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ledx;->a:Leen;

    iget-object v0, v0, Leen;->p:Ldvy;

    iget-object v0, v0, Ldvy;->a:Ldvx;

    sget-object v1, Ldvx;->d:Ldvx;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ledx;->a:Leen;

    iget-object v0, v0, Leen;->d:Ldvj;

    const/4 v1, 0x2

    .line 1
    const-string v2, "CONNECTING as requested"

    invoke-virtual {v0, v1, v2}, Ldvj;->a(ILjava/lang/String;)V

    iget-object v0, p0, Ledx;->a:Leen;

    sget-object v1, Ldvx;->a:Ldvx;

    .line 2
    invoke-virtual {v0, v1}, Leen;->a(Ldvx;)V

    iget-object v0, p0, Ledx;->a:Leen;

    .line 3
    invoke-virtual {v0}, Leen;->c()V

    :cond_0
    return-void
.end method
