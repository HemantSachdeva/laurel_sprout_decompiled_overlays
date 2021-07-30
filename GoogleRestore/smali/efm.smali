.class final Lefm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Legj;


# direct methods
.method public constructor <init>(Legj;)V
    .locals 0

    iput-object p1, p0, Lefm;->a:Legj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lefm;->a:Legj;

    .line 1
    sget-object v1, Ldvx;->e:Ldvx;

    invoke-static {v1}, Ldvy;->a(Ldvx;)Ldvy;

    move-result-object v1

    invoke-virtual {v0, v1}, Legj;->a(Ldvy;)V

    return-void
.end method
